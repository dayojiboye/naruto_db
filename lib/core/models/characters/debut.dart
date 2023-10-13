import 'package:freezed_annotation/freezed_annotation.dart';

part 'debut.freezed.dart';
part 'debut.g.dart';

@freezed
class Debut with _$Debut {
  factory Debut({
    String? novel,
    String? movie,
    String? appearsIn,
  }) = _Debut;

  factory Debut.fromJson(Map<String, dynamic> json) => _$DebutFromJson(json);
}
