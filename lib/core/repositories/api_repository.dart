import 'package:dio/dio.dart';
import 'package:naruto_db/core/models/characters/characters.dart';

// import 'api_interceptor.dart';

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

  Future<Characters> getAllCharacters([int currentPage = 1]) async {
    final url = 'character?page=$currentPage&limit=20';
    try {
      final response = await dio.get(url);
      return Characters.fromJson(response.data);
    } on DioException catch (e) {
      print(e.message);
      throw e.error!;
    }
  }
}
