import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_app/features/home_screen/cubits/home_cubit/home_cubit.dart';
import 'package:marvel_app/features/home_screen/cubits/home_cubit/home_state.dart';
import 'package:marvel_app/features/home_screen/widgets/list_item_widget.dart';
import 'package:marvel_app/features/home_screen/widgets/loading_widget.dart';
import 'package:marvel_app/resources/dimens/home_page_dimens.dart';
import 'package:marvel_app/resources/strings/home_page_strings.dart';

import '../../core/models/comics_data_wrapper.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final HomeCubit homeCubit = Modular.get<HomeCubit>();

  @override
  void initState(){
    super.initState();
    homeCubit.fetchComics();
  }

 @override
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       centerTitle: false,
       title: const Text(
         HomePageStrings.appBarTitle,
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: HomePageDimens.appBarTextSize,
           color: Colors.black,
         ),
       ),
     ),
     body: Padding(
       padding: const EdgeInsets.all(HomePageDimens.aroundBodyPadding),
       child: _buildComicsList(),
     ),
   );
 }

 Widget _buildComicsList(){
    return BlocProvider(
      create: (_) => homeCubit,
      child: BlocListener<HomeCubit, HomeState>(
        listener: (context, state){
          if (state is HomeError){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message ?? HomePageStrings.error)),
            );
          }
        },
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state){
            if (state is HomeInitial) {
            return LoadingWidget();
            } else if (state is HomeLoading) {
            return LoadingWidget();
            } else if (state is HomeLoaded) {
            return _buildListItems(context, state.comics);
            } else if (state is HomeError) {
            return Container();
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
    return _noDataWidget();
  }

  Widget _noDataWidget(){
    return const Center(child: Text(HomePageStrings.noComics),);
  }
}

