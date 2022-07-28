// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatorList _$$_CreatorListFromJson(Map<String, dynamic> json) =>
    _$_CreatorList(
      available: json['available'] as int?,
      returned: json['returned'] as int?,
      collectionURI: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CreatorSummary.fromJson((e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, e as Object),
              )))
          .toList(),
    );

Map<String, dynamic> _$$_CreatorListToJson(_$_CreatorList instance) =>
    <String, dynamic>{
      'available': instance.available,
      'returned': instance.returned,
      'collectionURI': instance.collectionURI,
      'items': instance.items,
    };
