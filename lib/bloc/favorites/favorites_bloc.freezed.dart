// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesCharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) toggled,
    required TResult Function(Character character) removed,
    required TResult Function(SortType sortType) sortChanged,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? toggled,
    TResult? Function(Character character)? removed,
    TResult? Function(SortType sortType)? sortChanged,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? toggled,
    TResult Function(Character character)? removed,
    TResult Function(SortType sortType)? sortChanged,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFavoriteToggled value) toggled,
    required TResult Function(CharacterFavoriteRemoved value) removed,
    required TResult Function(CharacterFavoriteSorted value) sortChanged,
    required TResult Function(CharacterFavoriteLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFavoriteToggled value)? toggled,
    TResult? Function(CharacterFavoriteRemoved value)? removed,
    TResult? Function(CharacterFavoriteSorted value)? sortChanged,
    TResult? Function(CharacterFavoriteLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFavoriteToggled value)? toggled,
    TResult Function(CharacterFavoriteRemoved value)? removed,
    TResult Function(CharacterFavoriteSorted value)? sortChanged,
    TResult Function(CharacterFavoriteLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCharactersEventCopyWith<$Res> {
  factory $FavoritesCharactersEventCopyWith(FavoritesCharactersEvent value,
          $Res Function(FavoritesCharactersEvent) then) =
      _$FavoritesCharactersEventCopyWithImpl<$Res, FavoritesCharactersEvent>;
}

/// @nodoc
class _$FavoritesCharactersEventCopyWithImpl<$Res,
        $Val extends FavoritesCharactersEvent>
    implements $FavoritesCharactersEventCopyWith<$Res> {
  _$FavoritesCharactersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CharacterFavoriteToggledImplCopyWith<$Res> {
  factory _$$CharacterFavoriteToggledImplCopyWith(
          _$CharacterFavoriteToggledImpl value,
          $Res Function(_$CharacterFavoriteToggledImpl) then) =
      __$$CharacterFavoriteToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$CharacterFavoriteToggledImplCopyWithImpl<$Res>
    extends _$FavoritesCharactersEventCopyWithImpl<$Res,
        _$CharacterFavoriteToggledImpl>
    implements _$$CharacterFavoriteToggledImplCopyWith<$Res> {
  __$$CharacterFavoriteToggledImplCopyWithImpl(
      _$CharacterFavoriteToggledImpl _value,
      $Res Function(_$CharacterFavoriteToggledImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$CharacterFavoriteToggledImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$CharacterFavoriteToggledImpl implements CharacterFavoriteToggled {
  const _$CharacterFavoriteToggledImpl({required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'FavoritesCharactersEvent.toggled(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFavoriteToggledImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterFavoriteToggledImplCopyWith<_$CharacterFavoriteToggledImpl>
      get copyWith => __$$CharacterFavoriteToggledImplCopyWithImpl<
          _$CharacterFavoriteToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) toggled,
    required TResult Function(Character character) removed,
    required TResult Function(SortType sortType) sortChanged,
    required TResult Function() loaded,
  }) {
    return toggled(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? toggled,
    TResult? Function(Character character)? removed,
    TResult? Function(SortType sortType)? sortChanged,
    TResult? Function()? loaded,
  }) {
    return toggled?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? toggled,
    TResult Function(Character character)? removed,
    TResult Function(SortType sortType)? sortChanged,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (toggled != null) {
      return toggled(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFavoriteToggled value) toggled,
    required TResult Function(CharacterFavoriteRemoved value) removed,
    required TResult Function(CharacterFavoriteSorted value) sortChanged,
    required TResult Function(CharacterFavoriteLoaded value) loaded,
  }) {
    return toggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFavoriteToggled value)? toggled,
    TResult? Function(CharacterFavoriteRemoved value)? removed,
    TResult? Function(CharacterFavoriteSorted value)? sortChanged,
    TResult? Function(CharacterFavoriteLoaded value)? loaded,
  }) {
    return toggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFavoriteToggled value)? toggled,
    TResult Function(CharacterFavoriteRemoved value)? removed,
    TResult Function(CharacterFavoriteSorted value)? sortChanged,
    TResult Function(CharacterFavoriteLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (toggled != null) {
      return toggled(this);
    }
    return orElse();
  }
}

abstract class CharacterFavoriteToggled implements FavoritesCharactersEvent {
  const factory CharacterFavoriteToggled({required final Character character}) =
      _$CharacterFavoriteToggledImpl;

  Character get character;

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterFavoriteToggledImplCopyWith<_$CharacterFavoriteToggledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterFavoriteRemovedImplCopyWith<$Res> {
  factory _$$CharacterFavoriteRemovedImplCopyWith(
          _$CharacterFavoriteRemovedImpl value,
          $Res Function(_$CharacterFavoriteRemovedImpl) then) =
      __$$CharacterFavoriteRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$CharacterFavoriteRemovedImplCopyWithImpl<$Res>
    extends _$FavoritesCharactersEventCopyWithImpl<$Res,
        _$CharacterFavoriteRemovedImpl>
    implements _$$CharacterFavoriteRemovedImplCopyWith<$Res> {
  __$$CharacterFavoriteRemovedImplCopyWithImpl(
      _$CharacterFavoriteRemovedImpl _value,
      $Res Function(_$CharacterFavoriteRemovedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$CharacterFavoriteRemovedImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$CharacterFavoriteRemovedImpl implements CharacterFavoriteRemoved {
  const _$CharacterFavoriteRemovedImpl({required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'FavoritesCharactersEvent.removed(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFavoriteRemovedImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterFavoriteRemovedImplCopyWith<_$CharacterFavoriteRemovedImpl>
      get copyWith => __$$CharacterFavoriteRemovedImplCopyWithImpl<
          _$CharacterFavoriteRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) toggled,
    required TResult Function(Character character) removed,
    required TResult Function(SortType sortType) sortChanged,
    required TResult Function() loaded,
  }) {
    return removed(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? toggled,
    TResult? Function(Character character)? removed,
    TResult? Function(SortType sortType)? sortChanged,
    TResult? Function()? loaded,
  }) {
    return removed?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? toggled,
    TResult Function(Character character)? removed,
    TResult Function(SortType sortType)? sortChanged,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFavoriteToggled value) toggled,
    required TResult Function(CharacterFavoriteRemoved value) removed,
    required TResult Function(CharacterFavoriteSorted value) sortChanged,
    required TResult Function(CharacterFavoriteLoaded value) loaded,
  }) {
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFavoriteToggled value)? toggled,
    TResult? Function(CharacterFavoriteRemoved value)? removed,
    TResult? Function(CharacterFavoriteSorted value)? sortChanged,
    TResult? Function(CharacterFavoriteLoaded value)? loaded,
  }) {
    return removed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFavoriteToggled value)? toggled,
    TResult Function(CharacterFavoriteRemoved value)? removed,
    TResult Function(CharacterFavoriteSorted value)? sortChanged,
    TResult Function(CharacterFavoriteLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class CharacterFavoriteRemoved implements FavoritesCharactersEvent {
  const factory CharacterFavoriteRemoved({required final Character character}) =
      _$CharacterFavoriteRemovedImpl;

  Character get character;

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterFavoriteRemovedImplCopyWith<_$CharacterFavoriteRemovedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterFavoriteSortedImplCopyWith<$Res> {
  factory _$$CharacterFavoriteSortedImplCopyWith(
          _$CharacterFavoriteSortedImpl value,
          $Res Function(_$CharacterFavoriteSortedImpl) then) =
      __$$CharacterFavoriteSortedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SortType sortType});
}

/// @nodoc
class __$$CharacterFavoriteSortedImplCopyWithImpl<$Res>
    extends _$FavoritesCharactersEventCopyWithImpl<$Res,
        _$CharacterFavoriteSortedImpl>
    implements _$$CharacterFavoriteSortedImplCopyWith<$Res> {
  __$$CharacterFavoriteSortedImplCopyWithImpl(
      _$CharacterFavoriteSortedImpl _value,
      $Res Function(_$CharacterFavoriteSortedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$CharacterFavoriteSortedImpl(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ));
  }
}

/// @nodoc

class _$CharacterFavoriteSortedImpl implements CharacterFavoriteSorted {
  const _$CharacterFavoriteSortedImpl({required this.sortType});

  @override
  final SortType sortType;

  @override
  String toString() {
    return 'FavoritesCharactersEvent.sortChanged(sortType: $sortType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFavoriteSortedImpl &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterFavoriteSortedImplCopyWith<_$CharacterFavoriteSortedImpl>
      get copyWith => __$$CharacterFavoriteSortedImplCopyWithImpl<
          _$CharacterFavoriteSortedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) toggled,
    required TResult Function(Character character) removed,
    required TResult Function(SortType sortType) sortChanged,
    required TResult Function() loaded,
  }) {
    return sortChanged(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? toggled,
    TResult? Function(Character character)? removed,
    TResult? Function(SortType sortType)? sortChanged,
    TResult? Function()? loaded,
  }) {
    return sortChanged?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? toggled,
    TResult Function(Character character)? removed,
    TResult Function(SortType sortType)? sortChanged,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFavoriteToggled value) toggled,
    required TResult Function(CharacterFavoriteRemoved value) removed,
    required TResult Function(CharacterFavoriteSorted value) sortChanged,
    required TResult Function(CharacterFavoriteLoaded value) loaded,
  }) {
    return sortChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFavoriteToggled value)? toggled,
    TResult? Function(CharacterFavoriteRemoved value)? removed,
    TResult? Function(CharacterFavoriteSorted value)? sortChanged,
    TResult? Function(CharacterFavoriteLoaded value)? loaded,
  }) {
    return sortChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFavoriteToggled value)? toggled,
    TResult Function(CharacterFavoriteRemoved value)? removed,
    TResult Function(CharacterFavoriteSorted value)? sortChanged,
    TResult Function(CharacterFavoriteLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (sortChanged != null) {
      return sortChanged(this);
    }
    return orElse();
  }
}

abstract class CharacterFavoriteSorted implements FavoritesCharactersEvent {
  const factory CharacterFavoriteSorted({required final SortType sortType}) =
      _$CharacterFavoriteSortedImpl;

  SortType get sortType;

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterFavoriteSortedImplCopyWith<_$CharacterFavoriteSortedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterFavoriteLoadedImplCopyWith<$Res> {
  factory _$$CharacterFavoriteLoadedImplCopyWith(
          _$CharacterFavoriteLoadedImpl value,
          $Res Function(_$CharacterFavoriteLoadedImpl) then) =
      __$$CharacterFavoriteLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterFavoriteLoadedImplCopyWithImpl<$Res>
    extends _$FavoritesCharactersEventCopyWithImpl<$Res,
        _$CharacterFavoriteLoadedImpl>
    implements _$$CharacterFavoriteLoadedImplCopyWith<$Res> {
  __$$CharacterFavoriteLoadedImplCopyWithImpl(
      _$CharacterFavoriteLoadedImpl _value,
      $Res Function(_$CharacterFavoriteLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CharacterFavoriteLoadedImpl implements CharacterFavoriteLoaded {
  const _$CharacterFavoriteLoadedImpl();

  @override
  String toString() {
    return 'FavoritesCharactersEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFavoriteLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) toggled,
    required TResult Function(Character character) removed,
    required TResult Function(SortType sortType) sortChanged,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? toggled,
    TResult? Function(Character character)? removed,
    TResult? Function(SortType sortType)? sortChanged,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? toggled,
    TResult Function(Character character)? removed,
    TResult Function(SortType sortType)? sortChanged,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFavoriteToggled value) toggled,
    required TResult Function(CharacterFavoriteRemoved value) removed,
    required TResult Function(CharacterFavoriteSorted value) sortChanged,
    required TResult Function(CharacterFavoriteLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFavoriteToggled value)? toggled,
    TResult? Function(CharacterFavoriteRemoved value)? removed,
    TResult? Function(CharacterFavoriteSorted value)? sortChanged,
    TResult? Function(CharacterFavoriteLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFavoriteToggled value)? toggled,
    TResult Function(CharacterFavoriteRemoved value)? removed,
    TResult Function(CharacterFavoriteSorted value)? sortChanged,
    TResult Function(CharacterFavoriteLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterFavoriteLoaded implements FavoritesCharactersEvent {
  const factory CharacterFavoriteLoaded() = _$CharacterFavoriteLoadedImpl;
}

/// @nodoc
mixin _$FavoritesCharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> favorites, SortType sortType)
        loaded,
    required TResult Function(Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Character> favorites, SortType sortType)? loaded,
    TResult? Function(Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> favorites, SortType sortType)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesCharactersInitial value) initial,
    required TResult Function(FavoritesCharactersLoading value) loading,
    required TResult Function(FavoritesCharactersLoaded value) loaded,
    required TResult Function(FavoritesCharactersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesCharactersInitial value)? initial,
    TResult? Function(FavoritesCharactersLoading value)? loading,
    TResult? Function(FavoritesCharactersLoaded value)? loaded,
    TResult? Function(FavoritesCharactersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesCharactersInitial value)? initial,
    TResult Function(FavoritesCharactersLoading value)? loading,
    TResult Function(FavoritesCharactersLoaded value)? loaded,
    TResult Function(FavoritesCharactersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesCharactersStateCopyWith<$Res> {
  factory $FavoritesCharactersStateCopyWith(FavoritesCharactersState value,
          $Res Function(FavoritesCharactersState) then) =
      _$FavoritesCharactersStateCopyWithImpl<$Res, FavoritesCharactersState>;
}

/// @nodoc
class _$FavoritesCharactersStateCopyWithImpl<$Res,
        $Val extends FavoritesCharactersState>
    implements $FavoritesCharactersStateCopyWith<$Res> {
  _$FavoritesCharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FavoritesCharactersInitialImplCopyWith<$Res> {
  factory _$$FavoritesCharactersInitialImplCopyWith(
          _$FavoritesCharactersInitialImpl value,
          $Res Function(_$FavoritesCharactersInitialImpl) then) =
      __$$FavoritesCharactersInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesCharactersInitialImplCopyWithImpl<$Res>
    extends _$FavoritesCharactersStateCopyWithImpl<$Res,
        _$FavoritesCharactersInitialImpl>
    implements _$$FavoritesCharactersInitialImplCopyWith<$Res> {
  __$$FavoritesCharactersInitialImplCopyWithImpl(
      _$FavoritesCharactersInitialImpl _value,
      $Res Function(_$FavoritesCharactersInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoritesCharactersInitialImpl implements FavoritesCharactersInitial {
  const _$FavoritesCharactersInitialImpl();

  @override
  String toString() {
    return 'FavoritesCharactersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesCharactersInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> favorites, SortType sortType)
        loaded,
    required TResult Function(Object? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Character> favorites, SortType sortType)? loaded,
    TResult? Function(Object? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> favorites, SortType sortType)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesCharactersInitial value) initial,
    required TResult Function(FavoritesCharactersLoading value) loading,
    required TResult Function(FavoritesCharactersLoaded value) loaded,
    required TResult Function(FavoritesCharactersError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesCharactersInitial value)? initial,
    TResult? Function(FavoritesCharactersLoading value)? loading,
    TResult? Function(FavoritesCharactersLoaded value)? loaded,
    TResult? Function(FavoritesCharactersError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesCharactersInitial value)? initial,
    TResult Function(FavoritesCharactersLoading value)? loading,
    TResult Function(FavoritesCharactersLoaded value)? loaded,
    TResult Function(FavoritesCharactersError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FavoritesCharactersInitial implements FavoritesCharactersState {
  const factory FavoritesCharactersInitial() = _$FavoritesCharactersInitialImpl;
}

/// @nodoc
abstract class _$$FavoritesCharactersLoadingImplCopyWith<$Res> {
  factory _$$FavoritesCharactersLoadingImplCopyWith(
          _$FavoritesCharactersLoadingImpl value,
          $Res Function(_$FavoritesCharactersLoadingImpl) then) =
      __$$FavoritesCharactersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesCharactersLoadingImplCopyWithImpl<$Res>
    extends _$FavoritesCharactersStateCopyWithImpl<$Res,
        _$FavoritesCharactersLoadingImpl>
    implements _$$FavoritesCharactersLoadingImplCopyWith<$Res> {
  __$$FavoritesCharactersLoadingImplCopyWithImpl(
      _$FavoritesCharactersLoadingImpl _value,
      $Res Function(_$FavoritesCharactersLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoritesCharactersLoadingImpl implements FavoritesCharactersLoading {
  const _$FavoritesCharactersLoadingImpl();

  @override
  String toString() {
    return 'FavoritesCharactersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesCharactersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> favorites, SortType sortType)
        loaded,
    required TResult Function(Object? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Character> favorites, SortType sortType)? loaded,
    TResult? Function(Object? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> favorites, SortType sortType)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesCharactersInitial value) initial,
    required TResult Function(FavoritesCharactersLoading value) loading,
    required TResult Function(FavoritesCharactersLoaded value) loaded,
    required TResult Function(FavoritesCharactersError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesCharactersInitial value)? initial,
    TResult? Function(FavoritesCharactersLoading value)? loading,
    TResult? Function(FavoritesCharactersLoaded value)? loaded,
    TResult? Function(FavoritesCharactersError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesCharactersInitial value)? initial,
    TResult Function(FavoritesCharactersLoading value)? loading,
    TResult Function(FavoritesCharactersLoaded value)? loaded,
    TResult Function(FavoritesCharactersError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoritesCharactersLoading implements FavoritesCharactersState {
  const factory FavoritesCharactersLoading() = _$FavoritesCharactersLoadingImpl;
}

/// @nodoc
abstract class _$$FavoritesCharactersLoadedImplCopyWith<$Res> {
  factory _$$FavoritesCharactersLoadedImplCopyWith(
          _$FavoritesCharactersLoadedImpl value,
          $Res Function(_$FavoritesCharactersLoadedImpl) then) =
      __$$FavoritesCharactersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> favorites, SortType sortType});
}

/// @nodoc
class __$$FavoritesCharactersLoadedImplCopyWithImpl<$Res>
    extends _$FavoritesCharactersStateCopyWithImpl<$Res,
        _$FavoritesCharactersLoadedImpl>
    implements _$$FavoritesCharactersLoadedImplCopyWith<$Res> {
  __$$FavoritesCharactersLoadedImplCopyWithImpl(
      _$FavoritesCharactersLoadedImpl _value,
      $Res Function(_$FavoritesCharactersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? sortType = null,
  }) {
    return _then(_$FavoritesCharactersLoadedImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ));
  }
}

/// @nodoc

class _$FavoritesCharactersLoadedImpl implements FavoritesCharactersLoaded {
  const _$FavoritesCharactersLoadedImpl(
      {required final List<Character> favorites, required this.sortType})
      : _favorites = favorites;

  final List<Character> _favorites;
  @override
  List<Character> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  final SortType sortType;

  @override
  String toString() {
    return 'FavoritesCharactersState.loaded(favorites: $favorites, sortType: $sortType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesCharactersLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favorites), sortType);

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesCharactersLoadedImplCopyWith<_$FavoritesCharactersLoadedImpl>
      get copyWith => __$$FavoritesCharactersLoadedImplCopyWithImpl<
          _$FavoritesCharactersLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> favorites, SortType sortType)
        loaded,
    required TResult Function(Object? error) error,
  }) {
    return loaded(favorites, sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Character> favorites, SortType sortType)? loaded,
    TResult? Function(Object? error)? error,
  }) {
    return loaded?.call(favorites, sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> favorites, SortType sortType)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favorites, sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesCharactersInitial value) initial,
    required TResult Function(FavoritesCharactersLoading value) loading,
    required TResult Function(FavoritesCharactersLoaded value) loaded,
    required TResult Function(FavoritesCharactersError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesCharactersInitial value)? initial,
    TResult? Function(FavoritesCharactersLoading value)? loading,
    TResult? Function(FavoritesCharactersLoaded value)? loaded,
    TResult? Function(FavoritesCharactersError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesCharactersInitial value)? initial,
    TResult Function(FavoritesCharactersLoading value)? loading,
    TResult Function(FavoritesCharactersLoaded value)? loaded,
    TResult Function(FavoritesCharactersError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoritesCharactersLoaded implements FavoritesCharactersState {
  const factory FavoritesCharactersLoaded(
      {required final List<Character> favorites,
      required final SortType sortType}) = _$FavoritesCharactersLoadedImpl;

  List<Character> get favorites;
  SortType get sortType;

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesCharactersLoadedImplCopyWith<_$FavoritesCharactersLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesCharactersErrorImplCopyWith<$Res> {
  factory _$$FavoritesCharactersErrorImplCopyWith(
          _$FavoritesCharactersErrorImpl value,
          $Res Function(_$FavoritesCharactersErrorImpl) then) =
      __$$FavoritesCharactersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$FavoritesCharactersErrorImplCopyWithImpl<$Res>
    extends _$FavoritesCharactersStateCopyWithImpl<$Res,
        _$FavoritesCharactersErrorImpl>
    implements _$$FavoritesCharactersErrorImplCopyWith<$Res> {
  __$$FavoritesCharactersErrorImplCopyWithImpl(
      _$FavoritesCharactersErrorImpl _value,
      $Res Function(_$FavoritesCharactersErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$FavoritesCharactersErrorImpl(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$FavoritesCharactersErrorImpl implements FavoritesCharactersError {
  const _$FavoritesCharactersErrorImpl({this.error});

  @override
  final Object? error;

  @override
  String toString() {
    return 'FavoritesCharactersState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesCharactersErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesCharactersErrorImplCopyWith<_$FavoritesCharactersErrorImpl>
      get copyWith => __$$FavoritesCharactersErrorImplCopyWithImpl<
          _$FavoritesCharactersErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> favorites, SortType sortType)
        loaded,
    required TResult Function(Object? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Character> favorites, SortType sortType)? loaded,
    TResult? Function(Object? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> favorites, SortType sortType)? loaded,
    TResult Function(Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesCharactersInitial value) initial,
    required TResult Function(FavoritesCharactersLoading value) loading,
    required TResult Function(FavoritesCharactersLoaded value) loaded,
    required TResult Function(FavoritesCharactersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesCharactersInitial value)? initial,
    TResult? Function(FavoritesCharactersLoading value)? loading,
    TResult? Function(FavoritesCharactersLoaded value)? loaded,
    TResult? Function(FavoritesCharactersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesCharactersInitial value)? initial,
    TResult Function(FavoritesCharactersLoading value)? loading,
    TResult Function(FavoritesCharactersLoaded value)? loaded,
    TResult Function(FavoritesCharactersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoritesCharactersError implements FavoritesCharactersState {
  const factory FavoritesCharactersError({final Object? error}) =
      _$FavoritesCharactersErrorImpl;

  Object? get error;

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesCharactersErrorImplCopyWith<_$FavoritesCharactersErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
