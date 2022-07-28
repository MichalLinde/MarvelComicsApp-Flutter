import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'thumbnail.freezed.dart';
part 'thumbnail.g.dart';

@freezed
class Thumbnail with _$Thumbnail{
  const factory Thumbnail({
    String? path,
    String? extension
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, Object?> json)
    => _$ThumbnailFromJson(json);
}