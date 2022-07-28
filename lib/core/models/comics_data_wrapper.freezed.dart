// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comics_data_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicDataWrapper _$ComicDataWrapperFromJson(Map<String, dynamic> json) {
  return _ComicDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$ComicDataWrapper {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  String? get attributionText => throw _privateConstructorUsedError;
  String? get attributionHTML => throw _privateConstructorUsedError;
  ComicDataContainer? get data => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDataWrapperCopyWith<ComicDataWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDataWrapperCopyWith<$Res> {
  factory $ComicDataWrapperCopyWith(
          ComicDataWrapper value, $Res Function(ComicDataWrapper) then) =
      _$ComicDataWrapperCopyWithImpl<$Res>;
  $Res call(
      {int? code,
      String? status,
      String? copyright,
      String? attributionText,
      String? attributionHTML,
      ComicDataContainer? data,
      String? etag});

  $ComicDataContainerCopyWith<$Res>? get data;
}

/// @nodoc
class _$ComicDataWrapperCopyWithImpl<$Res>
    implements $ComicDataWrapperCopyWith<$Res> {
  _$ComicDataWrapperCopyWithImpl(this._value, this._then);

  final ComicDataWrapper _value;
  // ignore: unused_field
  final $Res Function(ComicDataWrapper) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? copyright = freezed,
    Object? attributionText = freezed,
    Object? attributionHTML = freezed,
    Object? data = freezed,
    Object? etag = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: copyright == freezed
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionText: attributionText == freezed
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionHTML: attributionHTML == freezed
          ? _value.attributionHTML
          : attributionHTML // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicDataContainer?,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ComicDataContainerCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ComicDataContainerCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_ComicDataWrapperCopyWith<$Res>
    implements $ComicDataWrapperCopyWith<$Res> {
  factory _$$_ComicDataWrapperCopyWith(
          _$_ComicDataWrapper value, $Res Function(_$_ComicDataWrapper) then) =
      __$$_ComicDataWrapperCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? code,
      String? status,
      String? copyright,
      String? attributionText,
      String? attributionHTML,
      ComicDataContainer? data,
      String? etag});

  @override
  $ComicDataContainerCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ComicDataWrapperCopyWithImpl<$Res>
    extends _$ComicDataWrapperCopyWithImpl<$Res>
    implements _$$_ComicDataWrapperCopyWith<$Res> {
  __$$_ComicDataWrapperCopyWithImpl(
      _$_ComicDataWrapper _value, $Res Function(_$_ComicDataWrapper) _then)
      : super(_value, (v) => _then(v as _$_ComicDataWrapper));

  @override
  _$_ComicDataWrapper get _value => super._value as _$_ComicDataWrapper;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? copyright = freezed,
    Object? attributionText = freezed,
    Object? attributionHTML = freezed,
    Object? data = freezed,
    Object? etag = freezed,
  }) {
    return _then(_$_ComicDataWrapper(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: copyright == freezed
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionText: attributionText == freezed
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String?,
      attributionHTML: attributionHTML == freezed
          ? _value.attributionHTML
          : attributionHTML // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicDataContainer?,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicDataWrapper
    with DiagnosticableTreeMixin
    implements _ComicDataWrapper {
  const _$_ComicDataWrapper(
      {this.code,
      this.status,
      this.copyright,
      this.attributionText,
      this.attributionHTML,
      this.data,
      this.etag});

  factory _$_ComicDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ComicDataWrapperFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final String? copyright;
  @override
  final String? attributionText;
  @override
  final String? attributionHTML;
  @override
  final ComicDataContainer? data;
  @override
  final String? etag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComicDataWrapper(code: $code, status: $status, copyright: $copyright, attributionText: $attributionText, attributionHTML: $attributionHTML, data: $data, etag: $etag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComicDataWrapper'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('copyright', copyright))
      ..add(DiagnosticsProperty('attributionText', attributionText))
      ..add(DiagnosticsProperty('attributionHTML', attributionHTML))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('etag', etag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDataWrapper &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.copyright, copyright) &&
            const DeepCollectionEquality()
                .equals(other.attributionText, attributionText) &&
            const DeepCollectionEquality()
                .equals(other.attributionHTML, attributionHTML) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.etag, etag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(copyright),
      const DeepCollectionEquality().hash(attributionText),
      const DeepCollectionEquality().hash(attributionHTML),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(etag));

  @JsonKey(ignore: true)
  @override
  _$$_ComicDataWrapperCopyWith<_$_ComicDataWrapper> get copyWith =>
      __$$_ComicDataWrapperCopyWithImpl<_$_ComicDataWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicDataWrapperToJson(
      this,
    );
  }
}

abstract class _ComicDataWrapper implements ComicDataWrapper {
  const factory _ComicDataWrapper(
      {final int? code,
      final String? status,
      final String? copyright,
      final String? attributionText,
      final String? attributionHTML,
      final ComicDataContainer? data,
      final String? etag}) = _$_ComicDataWrapper;

  factory _ComicDataWrapper.fromJson(Map<String, dynamic> json) =
      _$_ComicDataWrapper.fromJson;

  @override
  int? get code;
  @override
  String? get status;
  @override
  String? get copyright;
  @override
  String? get attributionText;
  @override
  String? get attributionHTML;
  @override
  ComicDataContainer? get data;
  @override
  String? get etag;
  @override
  @JsonKey(ignore: true)
  _$$_ComicDataWrapperCopyWith<_$_ComicDataWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
