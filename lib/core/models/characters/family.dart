import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
class Family with _$Family {
  factory Family({
    @JsonKey(name: 'incarnation with the god tree')
    String? incarnationWithTheGodTree,
    @JsonKey(name: 'depowered form') String? depoweredForm,
  }) = _Family;

  factory Family.fromJson(Map<String, dynamic> json) => _$FamilyFromJson(json);
}
