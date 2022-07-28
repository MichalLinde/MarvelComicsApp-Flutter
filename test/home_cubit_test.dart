import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/core/models/comic.dart';
import 'package:marvel_app/core/models/comic_data_container.dart';
import 'package:marvel_app/core/models/comics_data_wrapper.dart';
import 'package:marvel_app/core/repository/comics_repository.dart';
import 'package:marvel_app/features/home_screen/cubits/home_cubit/home_cubit.dart';
import 'package:marvel_app/features/home_screen/cubits/home_cubit/home_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_cubit_test.mocks.dart';

@GenerateMocks([ComicsRepository])
void main(){
  test("emit state loaded", () async {
    Comic comic = Comic(id: 1, title: "2", description: "3", urls: [], thumbnail: null, creators: null);
    ComicDataContainer comicDataContainer = ComicDataContainer(offset: 1, limit: 1, total: 1, count: 0, results: [comic]);
    ComicDataWrapper comicDataWrapper = ComicDataWrapper(code: 1, attributionHTML: "1", attributionText: "1", status: "1", copyright: "1", etag: "1", data: comicDataContainer);
    var repo = MockComicsRepository();
    when(repo.fetchComics()).thenAnswer((_) async => comicDataWrapper);
    HomeCubit homeCubit = HomeCubit(comicsRepository: repo);
    await homeCubit.fetchComics();

    expect(homeCubit.state, HomeLoaded(comicDataWrapper));
  });
}
