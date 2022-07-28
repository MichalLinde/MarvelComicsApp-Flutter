// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_data_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicDataContainer _$ComicDataContainerFromJson(Map<String, dynamic> json) {
  return _ComicDataContainer.fromJson(json);
}

/// @nodoc
mixin _$ComicDataContainer {
  int? get offset => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<Comic>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDataContainerCopyWith<ComicDataContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDataContainerCopyWith<$Res> {
  factory $ComicDataContainerCopyWith(
          ComicDataContainer value, $Res Function(ComicDataContainer) then) =
      _$ComicDataContainerCopyWithImpl<$Res>;
  $Res call(
      {int? offset, int? limit, int? total, int? count, List<Comic>? results});
}

/// @nodoc
class _$ComicDataContainerCopyWithImpl<$Res>
    implements $ComicDataContainerCopyWith<$Res> {
  _$ComicDataContainerCopyWithImpl(this._value, this._then);

  final ComicDataContainer _value;
  // ignore: unused_field
  final $Res Function(ComicDataContainer) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Comic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ComicDataContainerCopyWith<$Res>
    implements $ComicDataContainerCopyWith<$Res> {
  factory _$$_ComicDataContainerCopyWith(_$_ComicDataContainer value,
          $Res Function(_$_ComicDataContainer) then) =
      __$$_ComicDataContainerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? offset, int? limit, int? total, int? count, List<Comic>? results});
}

/// @nodoc
class __$$_ComicDataContainerCopyWithImpl<$Res>
    extends _$ComicDataContainerCopyWithImpl<$Res>
    implements _$$_ComicDataContainerCopyWith<$Res> {
  __$$_ComicDataContainerCopyWithImpl(
      _$_ComicDataContainer _value, $Res Function(_$_ComicDataContainer) _then)
      : super(_value, (v) => _then(v as _$_ComicDataContainer));

  @override
  _$_ComicDataContainer get _value => super._value as _$_ComicDataContainer;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_ComicDataContainer(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Comic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicDataContainer
    with DiagnosticableTreeMixin
    implements _ComicDataContainer {
  const _$_ComicDataContainer(
      {this.offset,
      this.limit,
      this.total,
      this.count,
      final List<Comic>? results})
      : _results = results;

  factory _$_ComicDataContainer.fromJson(Map<String, dynamic> json) =>
      _$$_ComicDataContainerFromJson(json);

  @override
  final int? offset;
  @override
  final int? limit;
  @override
  final int? total;
  @override
  final int? count;
  final List<Comic>? _results;
  @override
  List<Comic>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComicDataContainer(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComicDataContainer'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDataContainer &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_ComicDataContainerCopyWith<_$_ComicDataContainer> get copyWith =>
      __$$_ComicDataContainerCopyWithImpl<_$_ComicDataContainer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicDataContainerToJson(
      this,
    );
  }
}

abstract class _ComicDataContainer implements ComicDataContainer {
  const factory _ComicDataContainer(
      {final int? offset,
      final int? limit,
      final int? total,
      final int? count,
      final List<Comic>? results}) = _$_ComicDataContainer;

  factory _ComicDataContainer.fromJson(Map<String, dynamic> json) =
      _$_ComicDataContainer.fromJson;

  @override
  int? get offset;
  @override
  int? get limit;
  @override
  int? get total;
  @override
  int? get count;
  @override
  List<Comic>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_ComicDataContainerCopyWith<_$_ComicDataContainer> get copyWith =>
      throw _privateConstructorUsedError;
}
