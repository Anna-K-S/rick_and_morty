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
    required TResult Function(int id, bool isFavorite) toggled,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, bool isFavorite)? toggled,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, bool isFavorite)? toggled,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFavoriteToggled value) toggled,
    required TResult Function(CharacterFavoriteLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFavoriteToggled value)? toggled,
    TResult? Function(CharacterFavoriteLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFavoriteToggled value)? toggled,
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
  $Res call({int id, bool isFavorite});
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
    Object? id = null,
    Object? isFavorite = null,
  }) {
    return _then(_$CharacterFavoriteToggledImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CharacterFavoriteToggledImpl implements CharacterFavoriteToggled {
  const _$CharacterFavoriteToggledImpl(
      {required this.id, required this.isFavorite});

  @override
  final int id;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'FavoritesCharactersEvent.toggled(id: $id, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFavoriteToggledImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isFavorite);

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
    required TResult Function(int id, bool isFavorite) toggled,
    required TResult Function() loaded,
  }) {
    return toggled(id, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, bool isFavorite)? toggled,
    TResult? Function()? loaded,
  }) {
    return toggled?.call(id, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, bool isFavorite)? toggled,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (toggled != null) {
      return toggled(id, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterFavoriteToggled value) toggled,
    required TResult Function(CharacterFavoriteLoaded value) loaded,
  }) {
    return toggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFavoriteToggled value)? toggled,
    TResult? Function(CharacterFavoriteLoaded value)? loaded,
  }) {
    return toggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFavoriteToggled value)? toggled,
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
  const factory CharacterFavoriteToggled(
      {required final int id,
      required final bool isFavorite}) = _$CharacterFavoriteToggledImpl;

  int get id;
  bool get isFavorite;

  /// Create a copy of FavoritesCharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterFavoriteToggledImplCopyWith<_$CharacterFavoriteToggledImpl>
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
    required TResult Function(int id, bool isFavorite) toggled,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, bool isFavorite)? toggled,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, bool isFavorite)? toggled,
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
    required TResult Function(CharacterFavoriteLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFavoriteToggled value)? toggled,
    TResult? Function(CharacterFavoriteLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFavoriteToggled value)? toggled,
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
    required TResult Function(List<int> favorites, List<Character> characters)
        loading,
    required TResult Function(List<int> favorites, List<Character> characters)
        loaded,
    required TResult Function(
            Object? error, List<int> favorites, List<Character> characters)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<int> favorites, List<Character> characters)? loading,
    TResult? Function(List<int> favorites, List<Character> characters)? loaded,
    TResult? Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<int> favorites, List<Character> characters)? loading,
    TResult Function(List<int> favorites, List<Character> characters)? loaded,
    TResult Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
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
    required TResult Function(List<int> favorites, List<Character> characters)
        loading,
    required TResult Function(List<int> favorites, List<Character> characters)
        loaded,
    required TResult Function(
            Object? error, List<int> favorites, List<Character> characters)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<int> favorites, List<Character> characters)? loading,
    TResult? Function(List<int> favorites, List<Character> characters)? loaded,
    TResult? Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<int> favorites, List<Character> characters)? loading,
    TResult Function(List<int> favorites, List<Character> characters)? loaded,
    TResult Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
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
  @useResult
  $Res call({List<int> favorites, List<Character> characters});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? characters = null,
  }) {
    return _then(_$FavoritesCharactersLoadingImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<int>,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$FavoritesCharactersLoadingImpl implements FavoritesCharactersLoading {
  const _$FavoritesCharactersLoadingImpl(
      {required final List<int> favorites,
      required final List<Character> characters})
      : _favorites = favorites,
        _characters = characters;

  final List<int> _favorites;
  @override
  List<int> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'FavoritesCharactersState.loading(favorites: $favorites, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesCharactersLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_characters));

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesCharactersLoadingImplCopyWith<_$FavoritesCharactersLoadingImpl>
      get copyWith => __$$FavoritesCharactersLoadingImplCopyWithImpl<
          _$FavoritesCharactersLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<int> favorites, List<Character> characters)
        loading,
    required TResult Function(List<int> favorites, List<Character> characters)
        loaded,
    required TResult Function(
            Object? error, List<int> favorites, List<Character> characters)
        error,
  }) {
    return loading(favorites, characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<int> favorites, List<Character> characters)? loading,
    TResult? Function(List<int> favorites, List<Character> characters)? loaded,
    TResult? Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
  }) {
    return loading?.call(favorites, characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<int> favorites, List<Character> characters)? loading,
    TResult Function(List<int> favorites, List<Character> characters)? loaded,
    TResult Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(favorites, characters);
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
  const factory FavoritesCharactersLoading(
          {required final List<int> favorites,
          required final List<Character> characters}) =
      _$FavoritesCharactersLoadingImpl;

  List<int> get favorites;
  List<Character> get characters;

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesCharactersLoadingImplCopyWith<_$FavoritesCharactersLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesCharactersLoadedImplCopyWith<$Res> {
  factory _$$FavoritesCharactersLoadedImplCopyWith(
          _$FavoritesCharactersLoadedImpl value,
          $Res Function(_$FavoritesCharactersLoadedImpl) then) =
      __$$FavoritesCharactersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> favorites, List<Character> characters});
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
    Object? characters = null,
  }) {
    return _then(_$FavoritesCharactersLoadedImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<int>,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$FavoritesCharactersLoadedImpl implements FavoritesCharactersLoaded {
  const _$FavoritesCharactersLoadedImpl(
      {required final List<int> favorites,
      required final List<Character> characters})
      : _favorites = favorites,
        _characters = characters;

  final List<int> _favorites;
  @override
  List<int> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'FavoritesCharactersState.loaded(favorites: $favorites, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesCharactersLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_characters));

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
    required TResult Function(List<int> favorites, List<Character> characters)
        loading,
    required TResult Function(List<int> favorites, List<Character> characters)
        loaded,
    required TResult Function(
            Object? error, List<int> favorites, List<Character> characters)
        error,
  }) {
    return loaded(favorites, characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<int> favorites, List<Character> characters)? loading,
    TResult? Function(List<int> favorites, List<Character> characters)? loaded,
    TResult? Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
  }) {
    return loaded?.call(favorites, characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<int> favorites, List<Character> characters)? loading,
    TResult Function(List<int> favorites, List<Character> characters)? loaded,
    TResult Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favorites, characters);
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
          {required final List<int> favorites,
          required final List<Character> characters}) =
      _$FavoritesCharactersLoadedImpl;

  List<int> get favorites;
  List<Character> get characters;

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
  $Res call({Object? error, List<int> favorites, List<Character> characters});
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
    Object? favorites = null,
    Object? characters = null,
  }) {
    return _then(_$FavoritesCharactersErrorImpl(
      error: freezed == error ? _value.error : error,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<int>,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$FavoritesCharactersErrorImpl implements FavoritesCharactersError {
  const _$FavoritesCharactersErrorImpl(
      {this.error,
      required final List<int> favorites,
      required final List<Character> characters})
      : _favorites = favorites,
        _characters = characters;

  @override
  final Object? error;
  final List<int> _favorites;
  @override
  List<int> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'FavoritesCharactersState.error(error: $error, favorites: $favorites, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesCharactersErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_characters));

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
    required TResult Function(List<int> favorites, List<Character> characters)
        loading,
    required TResult Function(List<int> favorites, List<Character> characters)
        loaded,
    required TResult Function(
            Object? error, List<int> favorites, List<Character> characters)
        error,
  }) {
    return error(this.error, favorites, characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<int> favorites, List<Character> characters)? loading,
    TResult? Function(List<int> favorites, List<Character> characters)? loaded,
    TResult? Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
  }) {
    return error?.call(this.error, favorites, characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<int> favorites, List<Character> characters)? loading,
    TResult Function(List<int> favorites, List<Character> characters)? loaded,
    TResult Function(
            Object? error, List<int> favorites, List<Character> characters)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, favorites, characters);
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
  const factory FavoritesCharactersError(
          {final Object? error,
          required final List<int> favorites,
          required final List<Character> characters}) =
      _$FavoritesCharactersErrorImpl;

  Object? get error;
  List<int> get favorites;
  List<Character> get characters;

  /// Create a copy of FavoritesCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesCharactersErrorImplCopyWith<_$FavoritesCharactersErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
