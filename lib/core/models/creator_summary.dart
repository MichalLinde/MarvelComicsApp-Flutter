import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'creator_summary.freezed.dart';
part 'creator_summary.g.dart';

@freezed
class CreatorSummary with _$CreatorSummary{
  const factory CreatorSummary({
    String? resourceURI,
    String? name,
    String? role
  }) = _CreatorSummary;

  factory CreatorSummary.fromJson(Map<String, Object> json)
    => _$CreatorSummaryFromJson(json);
}