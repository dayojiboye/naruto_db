// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debut.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Debut _$DebutFromJson(Map<String, dynamic> json) {
  return _Debut.fromJson(json);
}

/// @nodoc
mixin _$Debut {
  String? get novel => throw _privateConstructorUsedError;
  String? get movie => throw _privateConstructorUsedError;
  String? get appearsIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebutCopyWith<Debut> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebutCopyWith<$Res> {
  factory $DebutCopyWith(Debut value, $Res Function(Debut) then) =
      _$DebutCopyWithImpl<$Res, Debut>;
  @useResult
  $Res call({String? novel, String? movie, String? appearsIn});
}

/// @nodoc
class _$DebutCopyWithImpl<$Res, $Val extends Debut>
    implements $DebutCopyWith<$Res> {
  _$DebutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novel = freezed,
    Object? movie = freezed,
    Object? appearsIn = freezed,
  }) {
    return _then(_value.copyWith(
      novel: freezed == novel
          ? _value.novel
          : novel // ignore: cast_nullable_to_non_nullable
              as String?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as String?,
      appearsIn: freezed == appearsIn
          ? _value.appearsIn
          : appearsIn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebutImplCopyWith<$Res> implements $DebutCopyWith<$Res> {
  factory _$$DebutImplCopyWith(
          _$DebutImpl value, $Res Function(_$DebutImpl) then) =
      __$$DebutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? novel, String? movie, String? appearsIn});
}

/// @nodoc
class __$$DebutImplCopyWithImpl<$Res>
    extends _$DebutCopyWithImpl<$Res, _$DebutImpl>
    implements _$$DebutImplCopyWith<$Res> {
  __$$DebutImplCopyWithImpl(
      _$DebutImpl _value, $Res Function(_$DebutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novel = freezed,
    Object? movie = freezed,
    Object? appearsIn = freezed,
  }) {
    return _then(_$DebutImpl(
      novel: freezed == novel
          ? _value.novel
          : novel // ignore: cast_nullable_to_non_nullable
              as String?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as String?,
      appearsIn: freezed == appearsIn
          ? _value.appearsIn
          : appearsIn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DebutImpl implements _Debut {
  _$DebutImpl({this.novel, this.movie, this.appearsIn});

  factory _$DebutImpl.fromJson(Map<String, dynamic> json) =>
      _$$DebutImplFromJson(json);

  @override
  final String? novel;
  @override
  final String? movie;
  @override
  final String? appearsIn;

  @override
  String toString() {
    return 'Debut(novel: $novel, movie: $movie, appearsIn: $appearsIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebutImpl &&
            (identical(other.novel, novel) || other.novel == novel) &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.appearsIn, appearsIn) ||
                other.appearsIn == appearsIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, novel, movie, appearsIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebutImplCopyWith<_$DebutImpl> get copyWith =>
      __$$DebutImplCopyWithImpl<_$DebutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DebutImplToJson(
      this,
    );
  }
}

abstract class _Debut implements Debut {
  factory _Debut(
      {final String? novel,
      final String? movie,
      final String? appearsIn}) = _$DebutImpl;

  factory _Debut.fromJson(Map<String, dynamic> json) = _$DebutImpl.fromJson;

  @override
  String? get novel;
  @override
  String? get movie;
  @override
  String? get appearsIn;
  @override
  @JsonKey(ignore: true)
  _$$DebutImplCopyWith<_$DebutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
