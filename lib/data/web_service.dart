import 'dart:developer';

import 'package:dio/dio.dart';

import '../utils/app_interceptor.dart';
import 'models/player_model.dart';

class ApiService {
  late Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://balldontlie.io/api/v1/',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    _dio.interceptors.addAll([
      // add interceptor to retry request if it fails
      AppInterceptor(_dio),
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
        logPrint: (object) => log(object.toString()),
      )
    ]);
  }

  Future<List<PlayerModel>> getPlayers(
      {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get('players', queryParameters: queryParams);
      return (response.data['data'] as List)
          .map((e) => PlayerModel.fromJson(e))
          .toList();
    } on DioException {
      return [];
    }
  }
}
