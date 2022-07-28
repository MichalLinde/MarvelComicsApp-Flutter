// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics_data_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicDataWrapper _$$_ComicDataWrapperFromJson(Map<String, dynamic> json) =>
    _$_ComicDataWrapper(
      code: json['code'] as int?,
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      attributionText: json['attributionText'] as String?,
      attributionHTML: json['attributionHTML'] as String?,
      data: json['data'] == null
          ? null
          : ComicDataContainer.fromJson(json['data'] as Map<String, dynamic>),
      etag: json['etag'] as String?,
    );

Map<String, dynamic> _$$_ComicDataWrapperToJson(_$_ComicDataWrapper instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHTML,
      'data': instance.data,
      'etag': instance.etag,
    };
