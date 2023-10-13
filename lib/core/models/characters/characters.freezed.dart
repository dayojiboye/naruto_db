// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Characters _$CharactersFromJson(Map<String, dynamic> json) {
  return _Characters.fromJson(json);
}

/// @nodoc
mixin _$Characters {
  List<Character> get characters => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalCharacters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersCopyWith<Characters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersCopyWith<$Res> {
  factory $CharactersCopyWith(
          Characters value, $Res Function(Characters) then) =
      _$CharactersCopyWithImpl<$Res, Characters>;
  @useResult
  $Res call(
      {List<Character> characters,
      int currentPage,
      int pageSize,
      int totalCharacters});
}

/// @nodoc
class _$CharactersCopyWithImpl<$Res, $Val extends Characters>
    implements $CharactersCopyWith<$Res> {
  _$CharactersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalCharacters = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalCharacters: null == totalCharacters
          ? _value.totalCharacters
          : totalCharacters // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersImplCopyWith<$Res>
    implements $CharactersCopyWith<$Res> {
  factory _$$CharactersImplCopyWith(
          _$CharactersImpl value, $Res Function(_$CharactersImpl) then) =
      __$$CharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Character> characters,
      int currentPage,
      int pageSize,
      int totalCharacters});
}

/// @nodoc
class __$$CharactersImplCopyWithImpl<$Res>
    extends _$CharactersCopyWithImpl<$Res, _$CharactersImpl>
    implements _$$CharactersImplCopyWith<$Res> {
  __$$CharactersImplCopyWithImpl(
      _$CharactersImpl _value, $Res Function(_$CharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalCharacters = null,
  }) {
    return _then(_$CharactersImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalCharacters: null == totalCharacters
          ? _value.totalCharacters
          : totalCharacters // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersImpl implements _Characters {
  _$CharactersImpl(
      {required final List<Character> characters,
      required this.currentPage,
      required this.pageSize,
      required this.totalCharacters})
      : _characters = characters;

  factory _$CharactersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersImplFromJson(json);

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final int totalCharacters;

  @override
  String toString() {
    return 'Characters(characters: $characters, currentPage: $currentPage, pageSize: $pageSize, totalCharacters: $totalCharacters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalCharacters, totalCharacters) ||
                other.totalCharacters == totalCharacters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      currentPage,
      pageSize,
      totalCharacters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersImplCopyWith<_$CharactersImpl> get copyWith =>
      __$$CharactersImplCopyWithImpl<_$CharactersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersImplToJson(
      this,
    );
  }
}

abstract class _Characters implements Characters {
  factory _Characters(
      {required final List<Character> characters,
      required final int currentPage,
      required final int pageSize,
      required final int totalCharacters}) = _$CharactersImpl;

  factory _Characters.fromJson(Map<String, dynamic> json) =
      _$CharactersImpl.fromJson;

  @override
  List<Character> get characters;
  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalCharacters;
  @override
  @JsonKey(ignore: true)
  _$$CharactersImplCopyWith<_$CharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
