import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/core/repository/comics_repository.dart';
import 'package:marvel_app/features/home_screen/cubits/search_cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState>{
  final ComicsRepository comicsRepository;

  SearchCubit({required this.comicsRepository}) : super(SearchInitial());

  Future<void> searchComics(String searchText) async{
    try{
      emit(SearchLoading());
      final comics = await comicsRepository.searchComics(searchText);
      if (comics.data?.results?.isEmpty == true){
        emit(SearchNotFound(searchText));
      } else {
        emit(SearchLoaded(comics));
      }
    } on Error{
      emit(const SearchError("Failed to fetch data!"));
    }
  }

  void setInitial(){
    emit(SearchInitial());
  }
}