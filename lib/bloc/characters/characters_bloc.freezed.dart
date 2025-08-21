// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadedMore,
    required TResult Function() refreshed,
    required TResult Function(CharacterFilter filter) filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadedMore,
    TResult? Function()? refreshed,
    TResult? Function(CharacterFilter filter)? filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadedMore,
    TResult Function()? refreshed,
    TResult Function(CharacterFilter filter)? filterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadedMore value) loadedMore,
    required TResult Function(Refreshed value) refreshed,
    required TResult Function(FilterChanged value) filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadedMore value)? loadedMore,
    TResult? Function(Refreshed value)? refreshed,
    TResult? Function(FilterChanged value)? filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadedMore value)? loadedMore,
    TResult Function(Refreshed value)? refreshed,
    TResult Function(FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res, CharactersEvent>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res, $Val extends CharactersEvent>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CharactersEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadedMore,
    required TResult Function() refreshed,
    required TResult Function(CharacterFilter filter) filterChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadedMore,
    TResult? Function()? refreshed,
    TResult? Function(CharacterFilter filter)? filterChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadedMore,
    TResult Function()? refreshed,
    TResult Function(CharacterFilter filter)? filterChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadedMore value) loadedMore,
    required TResult Function(Refreshed value) refreshed,
    required TResult Function(FilterChanged value) filterChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadedMore value)? loadedMore,
    TResult? Function(Refreshed value)? refreshed,
    TResult? Function(FilterChanged value)? filterChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadedMore value)? loadedMore,
    TResult Function(Refreshed value)? refreshed,
    TResult Function(FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements CharactersEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadedMoreImplCopyWith<$Res> {
  factory _$$LoadedMoreImplCopyWith(
          _$LoadedMoreImpl value, $Res Function(_$LoadedMoreImpl) then) =
      __$$LoadedMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedMoreImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$LoadedMoreImpl>
    implements _$$LoadedMoreImplCopyWith<$Res> {
  __$$LoadedMoreImplCopyWithImpl(
      _$LoadedMoreImpl _value, $Res Function(_$LoadedMoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedMoreImpl implements LoadedMore {
  const _$LoadedMoreImpl();

  @override
  String toString() {
    return 'CharactersEvent.loadedMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadedMore,
    required TResult Function() refreshed,
    required TResult Function(CharacterFilter filter) filterChanged,
  }) {
    return loadedMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadedMore,
    TResult? Function()? refreshed,
    TResult? Function(CharacterFilter filter)? filterChanged,
  }) {
    return loadedMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadedMore,
    TResult Function()? refreshed,
    TResult Function(CharacterFilter filter)? filterChanged,
    required TResult orElse(),
  }) {
    if (loadedMore != null) {
      return loadedMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadedMore value) loadedMore,
    required TResult Function(Refreshed value) refreshed,
    required TResult Function(FilterChanged value) filterChanged,
  }) {
    return loadedMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadedMore value)? loadedMore,
    TResult? Function(Refreshed value)? refreshed,
    TResult? Function(FilterChanged value)? filterChanged,
  }) {
    return loadedMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadedMore value)? loadedMore,
    TResult Function(Refreshed value)? refreshed,
    TResult Function(FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) {
    if (loadedMore != null) {
      return loadedMore(this);
    }
    return orElse();
  }
}

abstract class LoadedMore implements CharactersEvent {
  const factory LoadedMore() = _$LoadedMoreImpl;
}

/// @nodoc
abstract class _$$RefreshedImplCopyWith<$Res> {
  factory _$$RefreshedImplCopyWith(
          _$RefreshedImpl value, $Res Function(_$RefreshedImpl) then) =
      __$$RefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshedImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$RefreshedImpl>
    implements _$$RefreshedImplCopyWith<$Res> {
  __$$RefreshedImplCopyWithImpl(
      _$RefreshedImpl _value, $Res Function(_$RefreshedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshedImpl implements Refreshed {
  const _$RefreshedImpl();

  @override
  String toString() {
    return 'CharactersEvent.refreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadedMore,
    required TResult Function() refreshed,
    required TResult Function(CharacterFilter filter) filterChanged,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadedMore,
    TResult? Function()? refreshed,
    TResult? Function(CharacterFilter filter)? filterChanged,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadedMore,
    TResult Function()? refreshed,
    TResult Function(CharacterFilter filter)? filterChanged,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadedMore value) loadedMore,
    required TResult Function(Refreshed value) refreshed,
    required TResult Function(FilterChanged value) filterChanged,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadedMore value)? loadedMore,
    TResult? Function(Refreshed value)? refreshed,
    TResult? Function(FilterChanged value)? filterChanged,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadedMore value)? loadedMore,
    TResult Function(Refreshed value)? refreshed,
    TResult Function(FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class Refreshed implements CharactersEvent {
  const factory Refreshed() = _$RefreshedImpl;
}

/// @nodoc
abstract class _$$FilterChangedImplCopyWith<$Res> {
  factory _$$FilterChangedImplCopyWith(
          _$FilterChangedImpl value, $Res Function(_$FilterChangedImpl) then) =
      __$$FilterChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CharacterFilter filter});

  $CharacterFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$FilterChangedImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$FilterChangedImpl>
    implements _$$FilterChangedImplCopyWith<$Res> {
  __$$FilterChangedImplCopyWithImpl(
      _$FilterChangedImpl _value, $Res Function(_$FilterChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$FilterChangedImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter,
    ));
  }

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterFilterCopyWith<$Res> get filter {
    return $CharacterFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc

class _$FilterChangedImpl implements FilterChanged {
  const _$FilterChangedImpl(this.filter);

  @override
  final CharacterFilter filter;

  @override
  String toString() {
    return 'CharactersEvent.filterChanged(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterChangedImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith =>
      __$$FilterChangedImplCopyWithImpl<_$FilterChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadedMore,
    required TResult Function() refreshed,
    required TResult Function(CharacterFilter filter) filterChanged,
  }) {
    return filterChanged(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadedMore,
    TResult? Function()? refreshed,
    TResult? Function(CharacterFilter filter)? filterChanged,
  }) {
    return filterChanged?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadedMore,
    TResult Function()? refreshed,
    TResult Function(CharacterFilter filter)? filterChanged,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadedMore value) loadedMore,
    required TResult Function(Refreshed value) refreshed,
    required TResult Function(FilterChanged value) filterChanged,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(LoadedMore value)? loadedMore,
    TResult? Function(Refreshed value)? refreshed,
    TResult? Function(FilterChanged value)? filterChanged,
  }) {
    return filterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadedMore value)? loadedMore,
    TResult Function(Refreshed value)? refreshed,
    TResult Function(FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class FilterChanged implements CharactersEvent {
  const factory FilterChanged(final CharacterFilter filter) =
      _$FilterChangedImpl;

  CharacterFilter get filter;

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersState {
  int get currentPage => throw _privateConstructorUsedError;
  CharacterFilter get filter => throw _privateConstructorUsedError;
  List<Character> get characters => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        initial,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loading,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loaded,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersInitial value) initial,
    required TResult Function(CharactersLoading value) loading,
    required TResult Function(CharactersLoaded value) loaded,
    required TResult Function(CharactersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersInitial value)? initial,
    TResult? Function(CharactersLoading value)? loading,
    TResult? Function(CharactersLoaded value)? loaded,
    TResult? Function(CharactersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersInitial value)? initial,
    TResult Function(CharactersLoading value)? loading,
    TResult Function(CharactersLoaded value)? loaded,
    TResult Function(CharactersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersStateCopyWith<CharactersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
  @useResult
  $Res call(
      {int currentPage,
      CharacterFilter filter,
      List<Character> characters,
      bool hasMore});

  $CharacterFilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? filter = null,
    Object? characters = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterFilterCopyWith<$Res> get filter {
    return $CharacterFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharactersInitialImplCopyWith<$Res>
    implements $CharactersStateCopyWith<$Res> {
  factory _$$CharactersInitialImplCopyWith(_$CharactersInitialImpl value,
          $Res Function(_$CharactersInitialImpl) then) =
      __$$CharactersInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      CharacterFilter filter,
      List<Character> characters,
      bool hasMore});

  @override
  $CharacterFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$CharactersInitialImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersInitialImpl>
    implements _$$CharactersInitialImplCopyWith<$Res> {
  __$$CharactersInitialImplCopyWithImpl(_$CharactersInitialImpl _value,
      $Res Function(_$CharactersInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? filter = null,
    Object? characters = null,
    Object? hasMore = null,
  }) {
    return _then(_$CharactersInitialImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CharactersInitialImpl implements CharactersInitial {
  const _$CharactersInitialImpl(
      {required this.currentPage,
      this.filter = const CharacterFilter(),
      final List<Character> characters = const [],
      this.hasMore = true})
      : _characters = characters;

  @override
  final int currentPage;
  @override
  @JsonKey()
  final CharacterFilter filter;
  final List<Character> _characters;
  @override
  @JsonKey()
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'CharactersState.initial(currentPage: $currentPage, filter: $filter, characters: $characters, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersInitialImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, filter,
      const DeepCollectionEquality().hash(_characters), hasMore);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersInitialImplCopyWith<_$CharactersInitialImpl> get copyWith =>
      __$$CharactersInitialImplCopyWithImpl<_$CharactersInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        initial,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loading,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loaded,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)
        error,
  }) {
    return initial(currentPage, filter, characters, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
  }) {
    return initial?.call(currentPage, filter, characters, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentPage, filter, characters, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersInitial value) initial,
    required TResult Function(CharactersLoading value) loading,
    required TResult Function(CharactersLoaded value) loaded,
    required TResult Function(CharactersError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersInitial value)? initial,
    TResult? Function(CharactersLoading value)? loading,
    TResult? Function(CharactersLoaded value)? loaded,
    TResult? Function(CharactersError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersInitial value)? initial,
    TResult Function(CharactersLoading value)? loading,
    TResult Function(CharactersLoaded value)? loaded,
    TResult Function(CharactersError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CharactersInitial implements CharactersState {
  const factory CharactersInitial(
      {required final int currentPage,
      final CharacterFilter filter,
      final List<Character> characters,
      final bool hasMore}) = _$CharactersInitialImpl;

  @override
  int get currentPage;
  @override
  CharacterFilter get filter;
  @override
  List<Character> get characters;
  @override
  bool get hasMore;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersInitialImplCopyWith<_$CharactersInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersLoadingImplCopyWith<$Res>
    implements $CharactersStateCopyWith<$Res> {
  factory _$$CharactersLoadingImplCopyWith(_$CharactersLoadingImpl value,
          $Res Function(_$CharactersLoadingImpl) then) =
      __$$CharactersLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      CharacterFilter filter,
      List<Character> characters,
      bool hasMore});

  @override
  $CharacterFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$CharactersLoadingImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersLoadingImpl>
    implements _$$CharactersLoadingImplCopyWith<$Res> {
  __$$CharactersLoadingImplCopyWithImpl(_$CharactersLoadingImpl _value,
      $Res Function(_$CharactersLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? filter = null,
    Object? characters = null,
    Object? hasMore = null,
  }) {
    return _then(_$CharactersLoadingImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CharactersLoadingImpl implements CharactersLoading {
  const _$CharactersLoadingImpl(
      {required this.currentPage,
      this.filter = const CharacterFilter(),
      required final List<Character> characters,
      this.hasMore = true})
      : _characters = characters;

  @override
  final int currentPage;
  @override
  @JsonKey()
  final CharacterFilter filter;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'CharactersState.loading(currentPage: $currentPage, filter: $filter, characters: $characters, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersLoadingImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, filter,
      const DeepCollectionEquality().hash(_characters), hasMore);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersLoadingImplCopyWith<_$CharactersLoadingImpl> get copyWith =>
      __$$CharactersLoadingImplCopyWithImpl<_$CharactersLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        initial,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loading,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loaded,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)
        error,
  }) {
    return loading(currentPage, filter, characters, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
  }) {
    return loading?.call(currentPage, filter, characters, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(currentPage, filter, characters, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersInitial value) initial,
    required TResult Function(CharactersLoading value) loading,
    required TResult Function(CharactersLoaded value) loaded,
    required TResult Function(CharactersError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersInitial value)? initial,
    TResult? Function(CharactersLoading value)? loading,
    TResult? Function(CharactersLoaded value)? loaded,
    TResult? Function(CharactersError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersInitial value)? initial,
    TResult Function(CharactersLoading value)? loading,
    TResult Function(CharactersLoaded value)? loaded,
    TResult Function(CharactersError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharactersLoading implements CharactersState {
  const factory CharactersLoading(
      {required final int currentPage,
      final CharacterFilter filter,
      required final List<Character> characters,
      final bool hasMore}) = _$CharactersLoadingImpl;

  @override
  int get currentPage;
  @override
  CharacterFilter get filter;
  @override
  List<Character> get characters;
  @override
  bool get hasMore;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersLoadingImplCopyWith<_$CharactersLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersLoadedImplCopyWith<$Res>
    implements $CharactersStateCopyWith<$Res> {
  factory _$$CharactersLoadedImplCopyWith(_$CharactersLoadedImpl value,
          $Res Function(_$CharactersLoadedImpl) then) =
      __$$CharactersLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      CharacterFilter filter,
      List<Character> characters,
      bool hasMore});

  @override
  $CharacterFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$CharactersLoadedImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersLoadedImpl>
    implements _$$CharactersLoadedImplCopyWith<$Res> {
  __$$CharactersLoadedImplCopyWithImpl(_$CharactersLoadedImpl _value,
      $Res Function(_$CharactersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? filter = null,
    Object? characters = null,
    Object? hasMore = null,
  }) {
    return _then(_$CharactersLoadedImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CharactersLoadedImpl implements CharactersLoaded {
  const _$CharactersLoadedImpl(
      {required this.currentPage,
      this.filter = const CharacterFilter(),
      required final List<Character> characters,
      this.hasMore = true})
      : _characters = characters;

  @override
  final int currentPage;
  @override
  @JsonKey()
  final CharacterFilter filter;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'CharactersState.loaded(currentPage: $currentPage, filter: $filter, characters: $characters, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersLoadedImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, filter,
      const DeepCollectionEquality().hash(_characters), hasMore);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersLoadedImplCopyWith<_$CharactersLoadedImpl> get copyWith =>
      __$$CharactersLoadedImplCopyWithImpl<_$CharactersLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        initial,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loading,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loaded,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)
        error,
  }) {
    return loaded(currentPage, filter, characters, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
  }) {
    return loaded?.call(currentPage, filter, characters, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentPage, filter, characters, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersInitial value) initial,
    required TResult Function(CharactersLoading value) loading,
    required TResult Function(CharactersLoaded value) loaded,
    required TResult Function(CharactersError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersInitial value)? initial,
    TResult? Function(CharactersLoading value)? loading,
    TResult? Function(CharactersLoaded value)? loaded,
    TResult? Function(CharactersError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersInitial value)? initial,
    TResult Function(CharactersLoading value)? loading,
    TResult Function(CharactersLoaded value)? loaded,
    TResult Function(CharactersError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharactersLoaded implements CharactersState {
  const factory CharactersLoaded(
      {required final int currentPage,
      final CharacterFilter filter,
      required final List<Character> characters,
      final bool hasMore}) = _$CharactersLoadedImpl;

  @override
  int get currentPage;
  @override
  CharacterFilter get filter;
  @override
  List<Character> get characters;
  @override
  bool get hasMore;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersLoadedImplCopyWith<_$CharactersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersErrorImplCopyWith<$Res>
    implements $CharactersStateCopyWith<$Res> {
  factory _$$CharactersErrorImplCopyWith(_$CharactersErrorImpl value,
          $Res Function(_$CharactersErrorImpl) then) =
      __$$CharactersErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      CharacterFilter filter,
      List<Character> characters,
      String message,
      bool hasMore});

  @override
  $CharacterFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$CharactersErrorImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersErrorImpl>
    implements _$$CharactersErrorImplCopyWith<$Res> {
  __$$CharactersErrorImplCopyWithImpl(
      _$CharactersErrorImpl _value, $Res Function(_$CharactersErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? filter = null,
    Object? characters = null,
    Object? message = null,
    Object? hasMore = null,
  }) {
    return _then(_$CharactersErrorImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CharactersErrorImpl implements CharactersError {
  const _$CharactersErrorImpl(
      {required this.currentPage,
      this.filter = const CharacterFilter(),
      required final List<Character> characters,
      required this.message,
      this.hasMore = true})
      : _characters = characters;

  @override
  final int currentPage;
  @override
  @JsonKey()
  final CharacterFilter filter;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final String message;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'CharactersState.error(currentPage: $currentPage, filter: $filter, characters: $characters, message: $message, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersErrorImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, filter,
      const DeepCollectionEquality().hash(_characters), message, hasMore);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersErrorImplCopyWith<_$CharactersErrorImpl> get copyWith =>
      __$$CharactersErrorImplCopyWithImpl<_$CharactersErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        initial,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loading,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)
        loaded,
    required TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)
        error,
  }) {
    return error(currentPage, filter, characters, message, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult? Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
  }) {
    return error?.call(currentPage, filter, characters, message, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        initial,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loading,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, bool hasMore)?
        loaded,
    TResult Function(int currentPage, CharacterFilter filter,
            List<Character> characters, String message, bool hasMore)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(currentPage, filter, characters, message, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersInitial value) initial,
    required TResult Function(CharactersLoading value) loading,
    required TResult Function(CharactersLoaded value) loaded,
    required TResult Function(CharactersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersInitial value)? initial,
    TResult? Function(CharactersLoading value)? loading,
    TResult? Function(CharactersLoaded value)? loaded,
    TResult? Function(CharactersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersInitial value)? initial,
    TResult Function(CharactersLoading value)? loading,
    TResult Function(CharactersLoaded value)? loaded,
    TResult Function(CharactersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersError implements CharactersState {
  const factory CharactersError(
      {required final int currentPage,
      final CharacterFilter filter,
      required final List<Character> characters,
      required final String message,
      final bool hasMore}) = _$CharactersErrorImpl;

  @override
  int get currentPage;
  @override
  CharacterFilter get filter;
  @override
  List<Character> get characters;
  String get message;
  @override
  bool get hasMore;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersErrorImplCopyWith<_$CharactersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
