import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_app/features/home_screen/cubits/search_cubit/search_cubit.dart';
import 'package:marvel_app/features/home_screen/widgets/bottom_nav_bar.dart';
import 'package:marvel_app/features/home_screen/widgets/list_item_widget.dart';
import 'package:marvel_app/features/home_screen/widgets/loading_widget.dart';
import 'package:marvel_app/resources/custom_colors.dart';
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

  Timer? _debounce;
  String? _searchInput;

  bool visibleText = false;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if(controller.text.isNotEmpty) {
        setState(() {
          visibleText = true;
        });
      } else {
        setState(() {
          visibleText = false;
        });
      }
    });
  }

  @override void dispose() {
    _debounce?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: visibleText ? [
          TextButton(
              onPressed: () => cancelButtonPressed(),
              child: const Text(
                  SearchPageStrings.cancelButtonText,
                style: TextStyle(
                  fontSize: SearchPageDimens.cancelButtonTextSize,
                  color: CustomColors.regularGrey
                ),
              ))
        ] : null,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(SearchPageDimens.searchBarCornerRadius),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            controller:controller ,
            onChanged: (text) => _onSearchChanged(text),
            style: const TextStyle(
              color: CustomColors.darkGrey
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: visibleText ? CustomColors.darkGrey : CustomColors.regularGrey,
              ),
              filled: true,
              fillColor: CustomColors.lightGrey,
              hintText: SearchPageStrings.searchHint,
              hintStyle: const TextStyle(
                color: CustomColors.regularGrey
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
      bottomNavigationBar: BottomNavBar(currentIndex: 1,),
    );
  }


  Widget _buildSearchList(){
    return BlocProvider.value(
      value: searchCubit,
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
              return _buildNotFoundInfo(state.search);
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
    return _buildNotFoundInfo(SearchPageStrings.emptyList);
  }


  Widget _buildInitial(){
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.menu_book_rounded,
          color: CustomColors.regularGrey,
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

  Widget _buildNotFoundInfo(String searchText){
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.close_rounded,
          color: CustomColors.regularGrey,
          size: SearchPageDimens.infoIconSize,
        ),
        Text(
          "${SearchPageStrings.notFound1}$searchText${SearchPageStrings.notFound2}",
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: SearchPageDimens.infoTextSize,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    )
    );
  }

  void cancelButtonPressed(){
    controller.clear();
    searchCubit.setInitial();
  }

  void searchBarTextChanged(String text){
    if (text.isNotEmpty){
      _searchInput = text;
      searchCubit.searchComics(text);
    } else{
      searchCubit.setInitial();
    }
  }

  _onSearchChanged(String text){
    if (text != _searchInput) {
      _searchInput = text;
      if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 500), () {
        searchBarTextChanged(text);
      });
    }
  }


}
