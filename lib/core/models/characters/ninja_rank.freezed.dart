// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ninja_rank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NinjaRank _$NinjaRankFromJson(Map<String, dynamic> json) {
  return _NinjaRank.fromJson(json);
}

/// @nodoc
mixin _$NinjaRank {
  @JsonKey(name: 'Part II')
  String? get partIi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NinjaRankCopyWith<NinjaRank> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NinjaRankCopyWith<$Res> {
  factory $NinjaRankCopyWith(NinjaRank value, $Res Function(NinjaRank) then) =
      _$NinjaRankCopyWithImpl<$Res, NinjaRank>;
  @useResult
  $Res call({@JsonKey(name: 'Part II') String? partIi});
}

/// @nodoc
class _$NinjaRankCopyWithImpl<$Res, $Val extends NinjaRank>
    implements $NinjaRankCopyWith<$Res> {
  _$NinjaRankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partIi = freezed,
  }) {
    return _then(_value.copyWith(
      partIi: freezed == partIi
          ? _value.partIi
          : partIi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NinjaRankImplCopyWith<$Res>
    implements $NinjaRankCopyWith<$Res> {
  factory _$$NinjaRankImplCopyWith(
          _$NinjaRankImpl value, $Res Function(_$NinjaRankImpl) then) =
      __$$NinjaRankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Part II') String? partIi});
}

/// @nodoc
class __$$NinjaRankImplCopyWithImpl<$Res>
    extends _$NinjaRankCopyWithImpl<$Res, _$NinjaRankImpl>
    implements _$$NinjaRankImplCopyWith<$Res> {
  __$$NinjaRankImplCopyWithImpl(
      _$NinjaRankImpl _value, $Res Function(_$NinjaRankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partIi = freezed,
  }) {
    return _then(_$NinjaRankImpl(
      partIi: freezed == partIi
          ? _value.partIi
          : partIi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NinjaRankImpl implements _NinjaRank {
  _$NinjaRankImpl({@JsonKey(name: 'Part II') this.partIi});

  factory _$NinjaRankImpl.fromJson(Map<String, dynamic> json) =>
      _$$NinjaRankImplFromJson(json);

  @override
  @JsonKey(name: 'Part II')
  final String? partIi;

  @override
  String toString() {
    return 'NinjaRank(partIi: $partIi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NinjaRankImpl &&
            (identical(other.partIi, partIi) || other.partIi == partIi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, partIi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NinjaRankImplCopyWith<_$NinjaRankImpl> get copyWith =>
      __$$NinjaRankImplCopyWithImpl<_$NinjaRankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NinjaRankImplToJson(
      this,
    );
  }
}

abstract class _NinjaRank implements NinjaRank {
  factory _NinjaRank({@JsonKey(name: 'Part II') final String? partIi}) =
      _$NinjaRankImpl;

  factory _NinjaRank.fromJson(Map<String, dynamic> json) =
      _$NinjaRankImpl.fromJson;

  @override
  @JsonKey(name: 'Part II')
  String? get partIi;
  @override
  @JsonKey(ignore: true)
  _$$NinjaRankImplCopyWith<_$NinjaRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
