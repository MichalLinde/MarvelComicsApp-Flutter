// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'creator_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatorList _$CreatorListFromJson(Map<String, dynamic> json) {
  return _CreatorList.fromJson(json);
}

/// @nodoc
mixin _$CreatorList {
  int? get available => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  String? get collectionURI => throw _privateConstructorUsedError;
  List<CreatorSummary>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorListCopyWith<CreatorList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorListCopyWith<$Res> {
  factory $CreatorListCopyWith(
          CreatorList value, $Res Function(CreatorList) then) =
      _$CreatorListCopyWithImpl<$Res>;
  $Res call(
      {int? available,
      int? returned,
      String? collectionURI,
      List<CreatorSummary>? items});
}

/// @nodoc
class _$CreatorListCopyWithImpl<$Res> implements $CreatorListCopyWith<$Res> {
  _$CreatorListCopyWithImpl(this._value, this._then);

  final CreatorList _value;
  // ignore: unused_field
  final $Res Function(CreatorList) _then;

  @override
  $Res call({
    Object? available = freezed,
    Object? returned = freezed,
    Object? collectionURI = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      returned: returned == freezed
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionURI: collectionURI == freezed
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreatorSummary>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CreatorListCopyWith<$Res>
    implements $CreatorListCopyWith<$Res> {
  factory _$$_CreatorListCopyWith(
          _$_CreatorList value, $Res Function(_$_CreatorList) then) =
      __$$_CreatorListCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? available,
      int? returned,
      String? collectionURI,
      List<CreatorSummary>? items});
}

/// @nodoc
class __$$_CreatorListCopyWithImpl<$Res> extends _$CreatorListCopyWithImpl<$Res>
    implements _$$_CreatorListCopyWith<$Res> {
  __$$_CreatorListCopyWithImpl(
      _$_CreatorList _value, $Res Function(_$_CreatorList) _then)
      : super(_value, (v) => _then(v as _$_CreatorList));

  @override
  _$_CreatorList get _value => super._value as _$_CreatorList;

  @override
  $Res call({
    Object? available = freezed,
    Object? returned = freezed,
    Object? collectionURI = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_CreatorList(
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
      returned: returned == freezed
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionURI: collectionURI == freezed
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreatorSummary>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatorList with DiagnosticableTreeMixin implements _CreatorList {
  const _$_CreatorList(
      {this.available,
      this.returned,
      this.collectionURI,
      final List<CreatorSummary>? items})
      : _items = items;

  factory _$_CreatorList.fromJson(Map<String, dynamic> json) =>
      _$$_CreatorListFromJson(json);

  @override
  final int? available;
  @override
  final int? returned;
  @override
  final String? collectionURI;
  final List<CreatorSummary>? _items;
  @override
  List<CreatorSummary>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatorList(available: $available, returned: $returned, collectionURI: $collectionURI, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatorList'))
      ..add(DiagnosticsProperty('available', available))
      ..add(DiagnosticsProperty('returned', returned))
      ..add(DiagnosticsProperty('collectionURI', collectionURI))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorList &&
            const DeepCollectionEquality().equals(other.available, available) &&
            const DeepCollectionEquality().equals(other.returned, returned) &&
            const DeepCollectionEquality()
                .equals(other.collectionURI, collectionURI) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(available),
      const DeepCollectionEquality().hash(returned),
      const DeepCollectionEquality().hash(collectionURI),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_CreatorListCopyWith<_$_CreatorList> get copyWith =>
      __$$_CreatorListCopyWithImpl<_$_CreatorList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatorListToJson(
      this,
    );
  }
}

abstract class _CreatorList implements CreatorList {
  const factory _CreatorList(
      {final int? available,
      final int? returned,
      final String? collectionURI,
      final List<CreatorSummary>? items}) = _$_CreatorList;

  factory _CreatorList.fromJson(Map<String, dynamic> json) =
      _$_CreatorList.fromJson;

  @override
  int? get available;
  @override
  int? get returned;
  @override
  String? get collectionURI;
  @override
  List<CreatorSummary>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorListCopyWith<_$_CreatorList> get copyWith =>
      throw _privateConstructorUsedError;
}
