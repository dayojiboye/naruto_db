// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  Debut? get debut => throw _privateConstructorUsedError;
  List<String>? get jutsu => throw _privateConstructorUsedError;
  dynamic? get personal => throw _privateConstructorUsedError;
  List<String>? get uniqueTraits => throw _privateConstructorUsedError;
  dynamic? get family => throw _privateConstructorUsedError;
  List<String>? get natureType => throw _privateConstructorUsedError;
  dynamic? get rank => throw _privateConstructorUsedError;
  dynamic? get voiceActors => throw _privateConstructorUsedError;
  List<String>? get tools => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<String>? images,
      Debut? debut,
      List<String>? jutsu,
      dynamic? personal,
      List<String>? uniqueTraits,
      dynamic? family,
      List<String>? natureType,
      dynamic? rank,
      dynamic? voiceActors,
      List<String>? tools});

  $DebutCopyWith<$Res>? get debut;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? images = freezed,
    Object? debut = freezed,
    Object? jutsu = freezed,
    Object? personal = freezed,
    Object? uniqueTraits = freezed,
    Object? family = freezed,
    Object? natureType = freezed,
    Object? rank = freezed,
    Object? voiceActors = freezed,
    Object? tools = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      debut: freezed == debut
          ? _value.debut
          : debut // ignore: cast_nullable_to_non_nullable
              as Debut?,
      jutsu: freezed == jutsu
          ? _value.jutsu
          : jutsu // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      personal: freezed == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      uniqueTraits: freezed == uniqueTraits
          ? _value.uniqueTraits
          : uniqueTraits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      natureType: freezed == natureType
          ? _value.natureType
          : natureType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      voiceActors: freezed == voiceActors
          ? _value.voiceActors
          : voiceActors // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      tools: freezed == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DebutCopyWith<$Res>? get debut {
    if (_value.debut == null) {
      return null;
    }

    return $DebutCopyWith<$Res>(_value.debut!, (value) {
      return _then(_value.copyWith(debut: value) as $Val);
    });
  }

  // @override
  // @pragma('vm:prefer-inline')
  // $PersonalCopyWith<$Res>? get personal {
  //   if (_value.personal == null) {
  //     return null;
  //   }

  //   return $PersonalCopyWith<$Res>(_value.personal!, (value) {
  //     return _then(_value.copyWith(personal: value) as $Val);
  //   });
  // }

  // @override
  // @pragma('vm:prefer-inline')
  // $FamilyCopyWith<$Res>? get family {
  //   if (_value.family == null) {
  //     return null;
  //   }

  //   return $FamilyCopyWith<$Res>(_value.family!, (value) {
  //     return _then(_value.copyWith(family: value) as $Val);
  //   });
  // }

  // @override
  // @pragma('vm:prefer-inline')
  // $RankCopyWith<$Res>? get rank {
  //   if (_value.rank == null) {
  //     return null;
  //   }

  //   return $RankCopyWith<$Res>(_value.rank!, (value) {
  //     return _then(_value.copyWith(rank: value) as $Val);
  //   });
  // }

  // @override
  // @pragma('vm:prefer-inline')
  // $VoiceActorsCopyWith<$Res>? get voiceActors {
  //   if (_value.voiceActors == null) {
  //     return null;
  //   }

  //   return $VoiceActorsCopyWith<$Res>(_value.voiceActors!, (value) {
  //     return _then(_value.copyWith(voiceActors: value) as $Val);
  //   });
  // }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<String>? images,
      Debut? debut,
      List<String>? jutsu,
      dynamic? personal,
      List<String>? uniqueTraits,
      dynamic? family,
      List<String>? natureType,
      dynamic? rank,
      dynamic? voiceActors,
      List<String>? tools});

  @override
  $DebutCopyWith<$Res>? get debut;
  // @override
  // $PersonalCopyWith<$Res>? get personal;
  // @override
  // $FamilyCopyWith<$Res>? get family;
  // @override
  // $RankCopyWith<$Res>? get rank;
  // @override
  // $VoiceActorsCopyWith<$Res>? get voiceActors;
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? images = freezed,
    Object? debut = freezed,
    Object? jutsu = freezed,
    Object? personal = freezed,
    Object? uniqueTraits = freezed,
    Object? family = freezed,
    Object? natureType = freezed,
    Object? rank = freezed,
    Object? voiceActors = freezed,
    Object? tools = freezed,
  }) {
    return _then(_$CharacterImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      debut: freezed == debut
          ? _value.debut
          : debut // ignore: cast_nullable_to_non_nullable
              as Debut?,
      jutsu: freezed == jutsu
          ? _value._jutsu
          : jutsu // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      personal: freezed == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      uniqueTraits: freezed == uniqueTraits
          ? _value._uniqueTraits
          : uniqueTraits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      natureType: freezed == natureType
          ? _value._natureType
          : natureType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      voiceActors: freezed == voiceActors
          ? _value.voiceActors
          : voiceActors // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      tools: freezed == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  _$CharacterImpl(
      {this.id,
      this.name,
      final List<String>? images,
      this.debut,
      final List<String>? jutsu,
      this.personal,
      final List<String>? uniqueTraits,
      this.family,
      final List<String>? natureType,
      this.rank,
      this.voiceActors,
      final List<String>? tools})
      : _images = images,
        _jutsu = jutsu,
        _uniqueTraits = uniqueTraits,
        _natureType = natureType,
        _tools = tools;

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<String>? _images;
  final dynamic? personal;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Debut? debut;
  final List<String>? _jutsu;
  @override
  List<String>? get jutsu {
    final value = _jutsu;
    if (value == null) return null;
    if (_jutsu is EqualUnmodifiableListView) return _jutsu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  // final Personal? personal;
  final List<String>? _uniqueTraits;
  @override
  List<String>? get uniqueTraits {
    final value = _uniqueTraits;
    if (value == null) return null;
    if (_uniqueTraits is EqualUnmodifiableListView) return _uniqueTraits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic? family;
  final List<String>? _natureType;
  @override
  List<String>? get natureType {
    final value = _natureType;
    if (value == null) return null;
    if (_natureType is EqualUnmodifiableListView) return _natureType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic? rank;
  @override
  final dynamic? voiceActors;
  final List<String>? _tools;
  @override
  List<String>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Character(id: $id, name: $name, images: $images, debut: $debut, jutsu: $jutsu, uniqueTraits: $uniqueTraits, family: $family, natureType: $natureType, rank: $rank, voiceActors: $voiceActors, tools: $tools)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.debut, debut) || other.debut == debut) &&
            const DeepCollectionEquality().equals(other._jutsu, _jutsu) &&
            const DeepCollectionEquality()
                .equals(other._uniqueTraits, _uniqueTraits) &&
            (identical(other.family, family) || other.family == family) &&
            const DeepCollectionEquality()
                .equals(other._natureType, _natureType) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.voiceActors, voiceActors) ||
                other.voiceActors == voiceActors) &&
            const DeepCollectionEquality().equals(other._tools, _tools));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_images),
      debut,
      const DeepCollectionEquality().hash(_jutsu),
      personal,
      const DeepCollectionEquality().hash(_uniqueTraits),
      family,
      const DeepCollectionEquality().hash(_natureType),
      rank,
      voiceActors,
      const DeepCollectionEquality().hash(_tools));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  factory _Character(
      {final int? id,
      final String? name,
      final List<String>? images,
      final Debut? debut,
      final List<String>? jutsu,
      final dynamic? personal,
      final List<String>? uniqueTraits,
      final dynamic? family,
      final List<String>? natureType,
      final dynamic? rank,
      final dynamic? voiceActors,
      final List<String>? tools}) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<String>? get images;
  @override
  Debut? get debut;
  @override
  List<String>? get jutsu;
  @override
  dynamic? get personal;
  @override
  List<String>? get uniqueTraits;
  @override
  dynamic? get family;
  @override
  List<String>? get natureType;
  @override
  dynamic? get rank;
  @override
  dynamic? get voiceActors;
  @override
  List<String>? get tools;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
