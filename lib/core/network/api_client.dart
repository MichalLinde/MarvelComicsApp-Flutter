import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:marvel_app/core/models/comics_data_wrapper.dart';
import 'package:retrofit/retrofit.dart';

import '../../utils/constants_api.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ConstantsApi.baseUrl)
abstract class ApiClient {

  factory ApiClient(Dio dio) = _ApiClient;

  @GET("comics")
  Future<ComicDataWrapper> fetchComics(
      @Query("ts") String timeStamp,
      @Query("apikey") String apiKey,
      @Query("hash") String hash
      );

  @GET("comics")
  Future<ComicDataWrapper> searchComics(
      @Query("titleStartsWith") String titleStartsWith,
      @Query("ts") String timeStamp,
      @Query("apikey") String apiKey,
      @Query("hash") String hash
      );
}
