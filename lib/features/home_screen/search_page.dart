import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_app/features/home_screen/cubits/search_cubit/search_cubit.dart';
import 'package:marvel_app/features/home_screen/widgets/list_item_widget.dart';
import 'package:marvel_app/features/home_screen/widgets/loading_widget.dart';
import 'package:marvel_app/resources/dimens/search_page_dimens.dart';
import 'package:marvel_app/resources/strings/search_page_strings.dart';

import '../../core/models/comics_data_wrapper.dart';
import 'cubits/search_cubit/search_state.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SearchCubit searchCubit = Modular.get<SearchCubit>();
  
  bool visibleText = false;
  Color color = const Color.fromRGBO(169, 169, 169, 1);
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if(controller.text.isNotEmpty) {
        setState(() {
          color = const Color.fromRGBO(100, 100, 100, 1);
          visibleText = true;
        });
      } else {
        setState(() {
          color = const Color.fromRGBO(169, 169, 169, 1);
          visibleText = false;
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: visibleText ? [
          TextButton(
              onPressed: (){
                controller.clear();
                searchCubit.setInitial();
              },
              child: const Text(
                  SearchPageStrings.cancelButtonText,
                style: TextStyle(
                  fontSize: SearchPageDimens.cancelButtonTextSize,
                  color: Color.fromRGBO(169, 169, 169, 1)
                ),
              ))
        ] : null,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(SearchPageDimens.searchBarCornerRadius),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            controller:controller ,
            onChanged: (text) {
              if (text.isNotEmpty){
                searchCubit.searchComics(text);
              } else {
                searchCubit.setInitial();
              }
            },
            style: const TextStyle(
              color: Color.fromRGBO(100, 100, 100, 1)
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: color,
              ),
              filled: true,
              fillColor: const Color.fromRGBO(235, 236, 240, 1),
              hintText: SearchPageStrings.searchHint,
              hintStyle: const TextStyle(
                color: Color.fromRGBO(169, 169, 169, 1)
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(SearchPageDimens.aroundListPadding),
        child: _buildSearchList(),
      ),
    );
  }


  Widget _buildSearchList(){
    return BlocProvider(
      create: (_) => searchCubit,
      child: BlocListener<SearchCubit, SearchState>(
        listener: (context, state){
          if (state is SearchError){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message ?? SearchPageStrings.searchPageError)),
            );
          }
        },
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state){
            if (state is SearchInitial) {
              return _buildInitial();
            } else if (state is SearchLoading) {
              return LoadingWidget();
            } else if (state is SearchNotFound) {
              return _buildNotFoundInfo();
            } else if (state is SearchLoaded) {
              return _buildListItems(context, state.comics);
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }


  Widget _buildListItems(BuildContext context, ComicDataWrapper comics){

    if (comics.data != null){
      if (comics.data!.results != null){
        return ListView.builder(
            itemCount: comics.data!.results!.length,
            itemBuilder: (context, index) => ListItemWidget(comic: comics.data!.results![index],)
        );
      }
    }
    return _buildNotFoundInfo();
  }


  Widget _buildInitial(){
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.menu_book_rounded,
          color: Color.fromRGBO(200, 200, 200, 1),
          size: SearchPageDimens.infoIconSize,
        ),
        Text(
            SearchPageStrings.initialText,
          style: TextStyle(
            color: Colors.black,
            fontSize: SearchPageDimens.infoTextSize,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    )
    );
  }

  Widget _buildNotFoundInfo(){
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.close_rounded,
          color: Color.fromRGBO(200, 200, 200, 1),
          size: SearchPageDimens.infoIconSize,
        ),
        Text(
          SearchPageStrings.notFound,
          style: TextStyle(
              color: Colors.black,
              fontSize: SearchPageDimens.infoTextSize,
              fontWeight: FontWeight.bold
          ),
        )
      ],
    )
    );
  }
}
