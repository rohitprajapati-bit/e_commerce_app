import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/network/base_api_services.dart';

import 'api_client.dart';

class NetworkApiServices implements BaseApiServices {
  final ApiClient apiClient = ApiClient();
  final timeout = Duration(seconds: 10);

  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = await apiClient.dio.get(
       url,
      );

      return _returnResponse(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<dynamic> postApi(String url, data) {
    // TODO: implement postApi
    throw UnimplementedError();
  }

  @override
  Future<dynamic> patchApi(String url, data) {
    // TODO: implement patchApi
    throw UnimplementedError();
  }

  @override
  Future<dynamic> putApi(String url, data) {
    // TODO: implement putApi
    throw UnimplementedError();
  }

  @override
  Future<dynamic> deleteApi(String url) {
    throw UnimplementedError();
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        return response.data;
      case 400:
        throw Exception('Bad Request');
      case 401:
      case 403:
        throw Exception('Unauthorized Request');
      case 404:
        throw Exception("Not Found");

      case 500:
        throw Exception("Server Error");

      default:
        throw Exception("Unexpected Error: ${response.statusCode}");
    }
  }

  Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return Exception('connection Timeout');
      case DioExceptionType.sendTimeout:
        return Exception('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return Exception('Receive Timeout');
      case DioExceptionType.badResponse:
        return Exception('Bad Response: ${error.response?.statusCode}');
      case DioExceptionType.cancel:
        return Exception('Cancel Request');
      case DioExceptionType.connectionError:
        return Exception('No Internet Connection');
      default:
        return Exception('Something went wrong');
    }
  }
}
