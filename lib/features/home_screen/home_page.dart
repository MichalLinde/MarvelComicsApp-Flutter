import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_app/features/home_screen/cubits/home_cubit/home_cubit.dart';
import 'package:marvel_app/features/home_screen/cubits/home_cubit/home_state.dart';
import 'package:marvel_app/features/home_screen/widgets/list_item_widget.dart';
import 'package:marvel_app/features/home_screen/widgets/loading_widget.dart';

import '../../core/models/comics_data_wrapper.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final HomeCubit homeCubit = Modular.get<HomeCubit>();

  @override
  void initState(){
    homeCubit.fetchComics();
    super.initState();
  }

 @override
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       centerTitle: false,
       title: const Text(
         "Marvel Comics",
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 20.0,
           color: Colors.black,
         ),
       ),
     ),
     body: Padding(
       padding: EdgeInsets.all(8.0),
       child: _buildComicsList(),
     ),
   );
 }

 Widget _buildComicsList(){
    return Container(
      child: BlocProvider(
        create: (_) => homeCubit,
        child: BlocListener<HomeCubit, HomeState>(
          listener: (context, state){
            if (state is HomeError){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message!)),
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
      ),
    );
  }

  Widget _buildListItems(BuildContext context, ComicDataWrapper comics){
    return ListView.builder(
      itemCount: comics.data!.results!.length,
      itemBuilder: (context, index) => ListItemWidget(comic: comics.data!.results![index],)
    );
  }
}