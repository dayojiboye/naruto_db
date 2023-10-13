import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal.freezed.dart';
part 'personal.g.dart';

@freezed
class Personal with _$Personal {
  factory Personal({
    String? species,
  }) = _Personal;

  factory Personal.fromJson(Map<String, dynamic> json) =>
      _$PersonalFromJson(json);
}
