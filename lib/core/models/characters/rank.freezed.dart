// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'rank.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

// Rank _$RankFromJson(Map<String, dynamic> json) {
//   return _Rank.fromJson(json);
// }

// /// @nodoc
// mixin _$Rank {
//   NinjaRank? get ninjaRank => throw _privateConstructorUsedError;

//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $RankCopyWith<Rank> get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $RankCopyWith<$Res> {
//   factory $RankCopyWith(Rank value, $Res Function(Rank) then) =
//       _$RankCopyWithImpl<$Res, Rank>;
//   @useResult
//   $Res call({NinjaRank? ninjaRank});

//   $NinjaRankCopyWith<$Res>? get ninjaRank;
// }

// /// @nodoc
// class _$RankCopyWithImpl<$Res, $Val extends Rank>
//     implements $RankCopyWith<$Res> {
//   _$RankCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? ninjaRank = freezed,
//   }) {
//     return _then(_value.copyWith(
//       ninjaRank: freezed == ninjaRank
//           ? _value.ninjaRank
//           : ninjaRank // ignore: cast_nullable_to_non_nullable
//               as NinjaRank?,
//     ) as $Val);
//   }

//   @override
//   @pragma('vm:prefer-inline')
//   $NinjaRankCopyWith<$Res>? get ninjaRank {
//     if (_value.ninjaRank == null) {
//       return null;
//     }

//     return $NinjaRankCopyWith<$Res>(_value.ninjaRank!, (value) {
//       return _then(_value.copyWith(ninjaRank: value) as $Val);
//     });
//   }
// }

// /// @nodoc
// abstract class _$$RankImplCopyWith<$Res> implements $RankCopyWith<$Res> {
//   factory _$$RankImplCopyWith(
//           _$RankImpl value, $Res Function(_$RankImpl) then) =
//       __$$RankImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({NinjaRank? ninjaRank});

//   @override
//   $NinjaRankCopyWith<$Res>? get ninjaRank;
// }

// /// @nodoc
// class __$$RankImplCopyWithImpl<$Res>
//     extends _$RankCopyWithImpl<$Res, _$RankImpl>
//     implements _$$RankImplCopyWith<$Res> {
//   __$$RankImplCopyWithImpl(_$RankImpl _value, $Res Function(_$RankImpl) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? ninjaRank = freezed,
//   }) {
//     return _then(_$RankImpl(
//       ninjaRank: freezed == ninjaRank
//           ? _value.ninjaRank
//           : ninjaRank // ignore: cast_nullable_to_non_nullable
//               as NinjaRank?,
//     ));
//   }
// }

// /// @nodoc
// @JsonSerializable()
// class _$RankImpl implements _Rank {
//   _$RankImpl({this.ninjaRank});

//   factory _$RankImpl.fromJson(Map<String, dynamic> json) =>
//       _$$RankImplFromJson(json);

//   @override
//   final NinjaRank? ninjaRank;

//   @override
//   String toString() {
//     return 'Rank(ninjaRank: $ninjaRank)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$RankImpl &&
//             (identical(other.ninjaRank, ninjaRank) ||
//                 other.ninjaRank == ninjaRank));
//   }

//   @JsonKey(ignore: true)
//   @override
//   int get hashCode => Object.hash(runtimeType, ninjaRank);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$RankImplCopyWith<_$RankImpl> get copyWith =>
//       __$$RankImplCopyWithImpl<_$RankImpl>(this, _$identity);

//   @override
//   Map<String, dynamic> toJson() {
//     return _$$RankImplToJson(
//       this,
//     );
//   }
// }

// abstract class _Rank implements Rank {
//   factory _Rank({final NinjaRank? ninjaRank}) = _$RankImpl;

//   factory _Rank.fromJson(Map<String, dynamic> json) = _$RankImpl.fromJson;

//   @override
//   NinjaRank? get ninjaRank;
//   @override
//   @JsonKey(ignore: true)
//   _$$RankImplCopyWith<_$RankImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
