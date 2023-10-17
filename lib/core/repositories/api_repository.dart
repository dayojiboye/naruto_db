import 'package:dio/dio.dart';
import 'package:naruto_db/core/models/characters/characters.dart';
import 'package:naruto_db/core/repositories/api_interceptor.dart';

class ApiRepository {
  static const baseUrl = 'https://www.narutodb.xyz/api/';
  late Dio dio;

  ApiRepository() {
    BaseOptions options = BaseOptions(
      receiveTimeout: const Duration(milliseconds: 100000),
      connectTimeout: const Duration(milliseconds: 100000),
      baseUrl: baseUrl,
    );

    dio = Dio(options);
  }

  Future<Characters> getAllCharacters([int page = 1]) async {
    final url = 'character?page=$page&limit=20';
    try {
      final response = await dio.get(url);
      return Characters.fromJson(response.data);
    } on DioException catch (e) {
      // print(e.response!.statusCode.toString());
      print(e);
      throw onError(e);
    }
  }

  Future<Character> searchCharacter(String name) async {
    final url = "character/search?name=$name";
    try {
      final response = await dio.get(url);
      return Character.fromJson(response.data);
    } on DioException catch (e) {
      print(e);
      if (e.response!.statusCode == 404) {
        throw Exception(e.response);
      }
      throw onError(e);
    }
  }

  Future<Character> getCharacterById(int id) async {
    final url = "character/$id";
    try {
      final response = await dio.get(url);
      return Character.fromJson(response.data);
    } on DioException catch (e) {
      print(e);
      throw onError(e);
    }
  }
}
