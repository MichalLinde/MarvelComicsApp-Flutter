// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Url _$UrlFromJson(Map<String, dynamic> json) {
  return _Url.fromJson(json);
}

/// @nodoc
mixin _$Url {
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlCopyWith<Url> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlCopyWith<$Res> {
  factory $UrlCopyWith(Url value, $Res Function(Url) then) =
      _$UrlCopyWithImpl<$Res>;
  $Res call({String? type, String? url});
}

/// @nodoc
class _$UrlCopyWithImpl<$Res> implements $UrlCopyWith<$Res> {
  _$UrlCopyWithImpl(this._value, this._then);

  final Url _value;
  // ignore: unused_field
  final $Res Function(Url) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UrlCopyWith<$Res> implements $UrlCopyWith<$Res> {
  factory _$$_UrlCopyWith(_$_Url value, $Res Function(_$_Url) then) =
      __$$_UrlCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? url});
}

/// @nodoc
class __$$_UrlCopyWithImpl<$Res> extends _$UrlCopyWithImpl<$Res>
    implements _$$_UrlCopyWith<$Res> {
  __$$_UrlCopyWithImpl(_$_Url _value, $Res Function(_$_Url) _then)
      : super(_value, (v) => _then(v as _$_Url));

  @override
  _$_Url get _value => super._value as _$_Url;

  @override
  $Res call({
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Url(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Url with DiagnosticableTreeMixin implements _Url {
  const _$_Url({this.type, this.url});

  factory _$_Url.fromJson(Map<String, dynamic> json) => _$$_UrlFromJson(json);

  @override
  final String? type;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Url(type: $type, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Url'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Url &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_UrlCopyWith<_$_Url> get copyWith =>
      __$$_UrlCopyWithImpl<_$_Url>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlToJson(
      this,
    );
  }
}

abstract class _Url implements Url {
  const factory _Url({final String? type, final String? url}) = _$_Url;

  factory _Url.fromJson(Map<String, dynamic> json) = _$_Url.fromJson;

  @override
  String? get type;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_UrlCopyWith<_$_Url> get copyWith => throw _privateConstructorUsedError;
}
