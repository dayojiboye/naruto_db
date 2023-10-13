// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_actors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoiceActors _$VoiceActorsFromJson(Map<String, dynamic> json) {
  return _VoiceActors.fromJson(json);
}

/// @nodoc
mixin _$VoiceActors {
  dynamic get japanese => throw _privateConstructorUsedError;
  dynamic get english => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoiceActorsCopyWith<VoiceActors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceActorsCopyWith<$Res> {
  factory $VoiceActorsCopyWith(
          VoiceActors value, $Res Function(VoiceActors) then) =
      _$VoiceActorsCopyWithImpl<$Res, VoiceActors>;
  @useResult
  $Res call({dynamic japanese, dynamic english});
}

/// @nodoc
class _$VoiceActorsCopyWithImpl<$Res, $Val extends VoiceActors>
    implements $VoiceActorsCopyWith<$Res> {
  _$VoiceActorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? japanese = freezed,
    Object? english = freezed,
  }) {
    return _then(_value.copyWith(
      japanese: freezed == japanese
          ? _value.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as dynamic,
      english: freezed == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoiceActorsImplCopyWith<$Res>
    implements $VoiceActorsCopyWith<$Res> {
  factory _$$VoiceActorsImplCopyWith(
          _$VoiceActorsImpl value, $Res Function(_$VoiceActorsImpl) then) =
      __$$VoiceActorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic japanese, dynamic english});
}

/// @nodoc
class __$$VoiceActorsImplCopyWithImpl<$Res>
    extends _$VoiceActorsCopyWithImpl<$Res, _$VoiceActorsImpl>
    implements _$$VoiceActorsImplCopyWith<$Res> {
  __$$VoiceActorsImplCopyWithImpl(
      _$VoiceActorsImpl _value, $Res Function(_$VoiceActorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? japanese = freezed,
    Object? english = freezed,
  }) {
    return _then(_$VoiceActorsImpl(
      japanese: freezed == japanese
          ? _value.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as dynamic,
      english: freezed == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VoiceActorsImpl implements _VoiceActors {
  _$VoiceActorsImpl({this.japanese, this.english});

  factory _$VoiceActorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceActorsImplFromJson(json);

  @override
  final dynamic japanese;
  @override
  final dynamic english;

  @override
  String toString() {
    return 'VoiceActors(japanese: $japanese, english: $english)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoiceActorsImpl &&
            (identical(other.japanese, japanese) ||
                other.japanese == japanese) &&
            (identical(other.english, english) || other.english == english));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, japanese, english);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoiceActorsImplCopyWith<_$VoiceActorsImpl> get copyWith =>
      __$$VoiceActorsImplCopyWithImpl<_$VoiceActorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceActorsImplToJson(
      this,
    );
  }
}

abstract class _VoiceActors implements VoiceActors {
  factory _VoiceActors({final dynamic japanese, final dynamic english}) =
      _$VoiceActorsImpl;

  factory _VoiceActors.fromJson(Map<String, dynamic> json) =
      _$VoiceActorsImpl.fromJson;

  @override
  dynamic get japanese;
  @override
  dynamic get english;
  @override
  @JsonKey(ignore: true)
  _$$VoiceActorsImplCopyWith<_$VoiceActorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
