import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'creator_summary.dart';
part 'creator_list.freezed.dart';
part 'creator_list.g.dart';

@freezed
class CreatorList with _$CreatorList{
  const factory CreatorList({
    int? available,
    int? returned,
    String? collectionURI,
    List<CreatorSummary>? items
  }) = _CreatorList;

  factory CreatorList.fromJson(Map<String, Object?> json)
    => _$CreatorListFromJson(json);
}