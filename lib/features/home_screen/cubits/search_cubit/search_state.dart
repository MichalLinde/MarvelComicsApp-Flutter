import 'package:equatable/equatable.dart';
import 'package:marvel_app/core/models/comics_data_wrapper.dart';

abstract class SearchState extends Equatable{
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState{
  final ComicDataWrapper comics;
  const SearchLoaded(this.comics);
}

class SearchNotFound extends SearchState {
  final String search;
  const SearchNotFound(this.search);
}

class SearchError extends SearchState {
  final String? message;
  const SearchError(this.message);
}