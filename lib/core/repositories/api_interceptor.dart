import 'dart:async';

import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  Future<dynamic> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    print(
        "--> ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"${options.baseUrl ?? ""}${options.path ?? ""}"}");
    print("Headers:");
    options.headers.forEach((k, v) => print('$k: $v'));
    print("queryParameters:");
    options.queryParameters.forEach((k, v) => print('$k: $v'));
    if (options.data != null) {
      print("Body: ${options.data}");
    }
    print(
        "--> END ${options.method != null ? options.method.toUpperCase() : 'METHOD'}");
    // options.headers.addAll({"Authorization": "Bearer $token"});

    return options;
  }
}

@override
FutureOr<dynamic> onResponse(
    Response response, ResponseInterceptorHandler handler) async {
  print(
      "<-- ${response.statusCode} ${(response.requestOptions != null ? (response.requestOptions.baseUrl + response.requestOptions.path) : 'URL')}");
  print("Headers:");
  response.headers.forEach((k, v) => print('$k: $v'));
  print("Response: ${response.data}");
  print("<-- END HTTP");
  // }

  return response;
}

@override
dynamic onError(DioException dioError) {
  switch (dioError.type) {
    case DioExceptionType.cancel:
      dioError.error = "Request to API server was cancelled";
      break;
    case DioExceptionType.connectionTimeout:
      dioError.error = "Connection timeout with API server";
      break;
    case DioExceptionType.connectionError:
      dioError.error =
          "Connection to API server failed due to internet connection";
      break;
    case DioExceptionType.receiveTimeout:
      dioError.error = "Receive timeout in connection with API server";
      break;
    case DioExceptionType.badResponse:
      dioError.error =
          "Received invalid status code: ${dioError.response!.statusCode}";
      break;
    default:
      dioError.error = "Unexpected error occured";
  }

  return dioError;
}
