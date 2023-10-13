import 'package:freezed_annotation/freezed_annotation.dart';

part 'ninja_rank.freezed.dart';
part 'ninja_rank.g.dart';

@freezed
class NinjaRank with _$NinjaRank {
  factory NinjaRank({
    @JsonKey(name: 'Part II') String? partIi,
  }) = _NinjaRank;

  factory NinjaRank.fromJson(Map<String, dynamic> json) =>
      _$NinjaRankFromJson(json);
}
