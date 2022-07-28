import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'comic.dart';
part 'comic_data_container.freezed.dart';
part 'comic_data_container.g.dart';

@freezed
class ComicDataContainer with _$ComicDataContainer{
  const factory ComicDataContainer({
    int? offset,
    int? limit,
    int? total,
    int? count,
    List<Comic>? results
  }) = _ComicDataContainer;

  factory ComicDataContainer.fromJson(Map<String, Object?> json)
    => _$ComicDataContainerFromJson(json);
}