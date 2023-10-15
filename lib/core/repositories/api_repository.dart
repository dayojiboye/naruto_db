import 'package:dio/dio.dart';
import 'package:naruto_db/core/models/characters/characters.dart';
import 'package:naruto_db/core/repositories/api_exception.dart';
// import 'package:naruto_db/core/repositories/api_interceptor.dart';

class ApiRepository {
  static const baseUrl = 'https://narutodb.xyz/api/';
  late Dio dio;

  ApiRepository() {
    BaseOptions options = BaseOptions(
      receiveTimeout: const Duration(milliseconds: 100000),
      connectTimeout: const Duration(milliseconds: 100000),
      baseUrl: baseUrl,
    );

    dio = Dio(options);
    // dio.interceptors.add(ApiInterceptor());
  }

  Future<Characters> getAllCharacters([int page = 1]) async {
    // print(page);
    final url = 'character?page=$page&limit=20';
    try {
      final response = await dio.get(url);
      // log(Characters.fromJson(response.data).toString());
      // print()
      return Characters.fromJson(response.data);
    } on Exception catch (e) {
      print(e);
      throw CustomException.fromDioException(e).message;
    }
  }
}
