import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'comic_data_container.dart';
part 'comics_data_wrapper.freezed.dart';
part 'comics_data_wrapper.g.dart';

@freezed
class ComicDataWrapper with _$ComicDataWrapper{
  const factory ComicDataWrapper({
    int? code,
    String? status,
    String? copyright,
    String? attributionText,
    String? attributionHTML,
    ComicDataContainer? data,
    String? etag,
  }) = _ComicDataWrapper;

  factory ComicDataWrapper.fromJson(Map<String, Object?> json)
    => _$ComicDataWrapperFromJson(json);
}