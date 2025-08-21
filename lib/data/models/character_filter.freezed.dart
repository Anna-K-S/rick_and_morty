// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterFilter _$CharacterFilterFromJson(Map<String, dynamic> json) {
  return _CharacterFilter.fromJson(json);
}

/// @nodoc
mixin _$CharacterFilter {
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  SortBy? get sortBy => throw _privateConstructorUsedError;

  /// Serializes this CharacterFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterFilterCopyWith<CharacterFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterFilterCopyWith<$Res> {
  factory $CharacterFilterCopyWith(
          CharacterFilter value, $Res Function(CharacterFilter) then) =
      _$CharacterFilterCopyWithImpl<$Res, CharacterFilter>;
  @useResult
  $Res call({String? name, String? status, String? species, SortBy? sortBy});
}

/// @nodoc
class _$CharacterFilterCopyWithImpl<$Res, $Val extends CharacterFilter>
    implements $CharacterFilterCopyWith<$Res> {
  _$CharacterFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterFilterImplCopyWith<$Res>
    implements $CharacterFilterCopyWith<$Res> {
  factory _$$CharacterFilterImplCopyWith(_$CharacterFilterImpl value,
          $Res Function(_$CharacterFilterImpl) then) =
      __$$CharacterFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? status, String? species, SortBy? sortBy});
}

/// @nodoc
class __$$CharacterFilterImplCopyWithImpl<$Res>
    extends _$CharacterFilterCopyWithImpl<$Res, _$CharacterFilterImpl>
    implements _$$CharacterFilterImplCopyWith<$Res> {
  __$$CharacterFilterImplCopyWithImpl(
      _$CharacterFilterImpl _value, $Res Function(_$CharacterFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$CharacterFilterImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterFilterImpl implements _CharacterFilter {
  const _$CharacterFilterImpl(
      {this.name, this.status, this.species, this.sortBy});

  factory _$CharacterFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterFilterImplFromJson(json);

  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final SortBy? sortBy;

  @override
  String toString() {
    return 'CharacterFilter(name: $name, status: $status, species: $species, sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFilterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, status, species, sortBy);

  /// Create a copy of CharacterFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterFilterImplCopyWith<_$CharacterFilterImpl> get copyWith =>
      __$$CharacterFilterImplCopyWithImpl<_$CharacterFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterFilterImplToJson(
      this,
    );
  }
}

abstract class _CharacterFilter implements CharacterFilter {
  const factory _CharacterFilter(
      {final String? name,
      final String? status,
      final String? species,
      final SortBy? sortBy}) = _$CharacterFilterImpl;

  factory _CharacterFilter.fromJson(Map<String, dynamic> json) =
      _$CharacterFilterImpl.fromJson;

  @override
  String? get name;
  @override
  String? get status;
  @override
  String? get species;
  @override
  SortBy? get sortBy;

  /// Create a copy of CharacterFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterFilterImplCopyWith<_$CharacterFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
