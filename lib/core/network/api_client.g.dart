// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://gateway.marvel.com/v1/public/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ComicDataWrapper> fetchComics(timeStamp, apiKey, hash) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'ts': timeStamp,
      r'apikey': apiKey,
      r'hash': hash
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ComicDataWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'comics',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    log("ApiClient ${_result.data}");
    final value = ComicDataWrapper.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ComicDataWrapper> searchComics(
      titleStartsWith, timeStamp, apiKey, hash) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'titleStartsWith': titleStartsWith,
      r'ts': timeStamp,
      r'apikey': apiKey,
      r'hash': hash
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ComicDataWrapper>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'comics',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ComicDataWrapper.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
