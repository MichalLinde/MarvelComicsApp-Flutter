import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/core/models/creator_list.dart';
import 'package:marvel_app/core/models/thumbnail.dart';
import 'package:marvel_app/core/models/url.dart';
part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  const factory Comic({
    int? id,
    String? title,
    String? description,
    List<Url>? urls,
    Thumbnail? thumbnail,
    CreatorList? creators
  }) = _Comic;

  factory Comic.fromJson(Map<String, Object?> json)
    => _$ComicFromJson(json);
}
