// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Personal _$PersonalFromJson(Map<String, dynamic> json) {
  return _Personal.fromJson(json);
}

/// @nodoc
mixin _$Personal {
  String? get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalCopyWith<Personal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalCopyWith<$Res> {
  factory $PersonalCopyWith(Personal value, $Res Function(Personal) then) =
      _$PersonalCopyWithImpl<$Res, Personal>;
  @useResult
  $Res call({String? species});
}

/// @nodoc
class _$PersonalCopyWithImpl<$Res, $Val extends Personal>
    implements $PersonalCopyWith<$Res> {
  _$PersonalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = freezed,
  }) {
    return _then(_value.copyWith(
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalImplCopyWith<$Res>
    implements $PersonalCopyWith<$Res> {
  factory _$$PersonalImplCopyWith(
          _$PersonalImpl value, $Res Function(_$PersonalImpl) then) =
      __$$PersonalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? species});
}

/// @nodoc
class __$$PersonalImplCopyWithImpl<$Res>
    extends _$PersonalCopyWithImpl<$Res, _$PersonalImpl>
    implements _$$PersonalImplCopyWith<$Res> {
  __$$PersonalImplCopyWithImpl(
      _$PersonalImpl _value, $Res Function(_$PersonalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = freezed,
  }) {
    return _then(_$PersonalImpl(
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalImpl implements _Personal {
  _$PersonalImpl({this.species});

  factory _$PersonalImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalImplFromJson(json);

  @override
  final String? species;

  @override
  String toString() {
    return 'Personal(species: $species)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalImpl &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalImplCopyWith<_$PersonalImpl> get copyWith =>
      __$$PersonalImplCopyWithImpl<_$PersonalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalImplToJson(
      this,
    );
  }
}

abstract class _Personal implements Personal {
  factory _Personal({final String? species}) = _$PersonalImpl;

  factory _Personal.fromJson(Map<String, dynamic> json) =
      _$PersonalImpl.fromJson;

  @override
  String? get species;
  @override
  @JsonKey(ignore: true)
  _$$PersonalImplCopyWith<_$PersonalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
