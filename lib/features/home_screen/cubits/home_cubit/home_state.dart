import 'package:equatable/equatable.dart';
import 'package:marvel_app/core/models/comics_data_wrapper.dart';

abstract class HomeState extends Equatable{
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState{
  final ComicDataWrapper comics;
  const HomeLoaded(this.comics);
}

class HomeError extends HomeState {
  final String? message;
  const HomeError(this.message);
}