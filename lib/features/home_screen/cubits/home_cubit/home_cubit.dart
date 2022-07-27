import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/core/repository/comics_repository.dart';
import 'package:marvel_app/features/home_screen/cubits/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ComicsRepository comicsRepository;

  HomeCubit({required this.comicsRepository}) : super(HomeInitial()){
    fetchComics();
  }

  Future<void> fetchComics() async {
    try {
      if (state is! HomeLoaded) emit(HomeLoading());
      final comics = await comicsRepository.fetchComics();
      emit(HomeLoaded(comics));
    } on Error {
      emit(const HomeError("Failed to fetch data!"));
    }
  }
}
