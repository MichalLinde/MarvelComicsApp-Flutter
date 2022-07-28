import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/core/models/comic.dart';
import 'package:marvel_app/core/models/comic_data_container.dart';
import 'package:marvel_app/core/models/comics_data_wrapper.dart';
import 'package:marvel_app/core/repository/comics_repository.dart';
import 'package:marvel_app/features/home_screen/cubits/search_cubit/search_cubit.dart';
import 'package:marvel_app/features/home_screen/cubits/search_cubit/search_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_cubit_test.mocks.dart';


@GenerateMocks([ComicsRepository])
void main(){
  //var repo = MockComicsRepository();
  //MockComicsRepository
  test("emit state NotFound", () async {
    ComicDataContainer comicDataContainer = ComicDataContainer(offset: 1, limit: 1, total: 1, count: 0, results: []);
    ComicDataWrapper comicDataWrapper = ComicDataWrapper(code: 1, attributionHTML: "1", attributionText: "1", status: "1", copyright: "1", etag: "1", data: comicDataContainer);
    var repo = MockComicsRepository();
    when(repo.searchComics("text")).thenAnswer((_) async => comicDataWrapper);
    SearchCubit searchCubit = SearchCubit(comicsRepository: repo);
    await searchCubit.searchComics("text");
    
    expect(searchCubit.state, const SearchNotFound("text"));
  });


}