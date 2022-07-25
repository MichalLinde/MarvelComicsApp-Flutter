import 'package:marvel_app/core/network/api_client.dart';
import 'package:marvel_app/utils/constants_api.dart';

import '../models/comics_data_wrapper.dart';

class ComicsRepository{
  final ApiClient _apiClient;
  ComicsRepository(this._apiClient);

  Future<ComicDataWrapper> fetchComics(){
    return _apiClient.fetchComics(ConstantsApi.timeStamp, ConstantsApi.apiKey, ConstantsApi.hash());
  }

  Future<ComicDataWrapper> searchComics(String searchText){
    return _apiClient.searchComics(searchText, ConstantsApi.timeStamp, ConstantsApi.apiKey, ConstantsApi.hash());
  }
}