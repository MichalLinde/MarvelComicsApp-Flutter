// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'creator_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatorSummary _$CreatorSummaryFromJson(Map<String, dynamic> json) {
  return _CreatorSummary.fromJson(json);
}

/// @nodoc
mixin _$CreatorSummary {
  String? get resourceURI => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorSummaryCopyWith<CreatorSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorSummaryCopyWith<$Res> {
  factory $CreatorSummaryCopyWith(
          CreatorSummary value, $Res Function(CreatorSummary) then) =
      _$CreatorSummaryCopyWithImpl<$Res>;
  $Res call({String? resourceURI, String? name, String? role});
}

/// @nodoc
class _$CreatorSummaryCopyWithImpl<$Res>
    implements $CreatorSummaryCopyWith<$Res> {
  _$CreatorSummaryCopyWithImpl(this._value, this._then);

  final CreatorSummary _value;
  // ignore: unused_field
  final $Res Function(CreatorSummary) _then;

  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CreatorSummaryCopyWith<$Res>
    implements $CreatorSummaryCopyWith<$Res> {
  factory _$$_CreatorSummaryCopyWith(
          _$_CreatorSummary value, $Res Function(_$_CreatorSummary) then) =
      __$$_CreatorSummaryCopyWithImpl<$Res>;
  @override
  $Res call({String? resourceURI, String? name, String? role});
}

/// @nodoc
class __$$_CreatorSummaryCopyWithImpl<$Res>
    extends _$CreatorSummaryCopyWithImpl<$Res>
    implements _$$_CreatorSummaryCopyWith<$Res> {
  __$$_CreatorSummaryCopyWithImpl(
      _$_CreatorSummary _value, $Res Function(_$_CreatorSummary) _then)
      : super(_value, (v) => _then(v as _$_CreatorSummary));

  @override
  _$_CreatorSummary get _value => super._value as _$_CreatorSummary;

  @override
  $Res call({
    Object? resourceURI = freezed,
    Object? name = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_CreatorSummary(
      resourceURI: resourceURI == freezed
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatorSummary
    with DiagnosticableTreeMixin
    implements _CreatorSummary {
  const _$_CreatorSummary({this.resourceURI, this.name, this.role});

  factory _$_CreatorSummary.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorSummaryFromJson(json);

  @override
  final String? resourceURI;
  @override
  final String? name;
  @override
  final String? role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatorSummary(resourceURI: $resourceURI, name: $name, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatorSummary'))
      ..add(DiagnosticsProperty('resourceURI', resourceURI))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorSummary &&
            const DeepCollectionEquality()
                .equals(other.resourceURI, resourceURI) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resourceURI),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$$_CreatorSummaryCopyWith<_$_CreatorSummary> get copyWith =>
      __$$_CreatorSummaryCopyWithImpl<_$_CreatorSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorSummaryToJson(
      this,
    );
  }
}

abstract class _CreatorSummary implements CreatorSummary {
  const factory _CreatorSummary(
      {final String? resourceURI,
      final String? name,
      final String? role}) = _$_CreatorSummary;

  factory _CreatorSummary.fromJson(Map<String, dynamic> json) =
      _$_CreatorSummary.fromJson;

  @override
  String? get resourceURI;
  @override
  String? get name;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorSummaryCopyWith<_$_CreatorSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
