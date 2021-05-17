import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:geolocationtest/movas/services/http_service/http_service.dart';

class MobileDioHttpService extends BaseHttpService {
  // var apiVersion = "v1.0";
  Dio dio;
  MobileDioHttpService() {
    dio = Dio();

    dio.options.baseUrl = "https://www.refugerestrooms.org/api/v1";
  }

  @override
  Future<T> get<T>(
      {BaseHttpRequest request,
      T Function(Map<String, dynamic> data) converter}) async {
    var options = Options(
      contentType: Headers.formUrlEncodedContentType,
    );

    final map = request.toMap();
    //map["apiVersion"] = apiVersion;

    final response =
        await dio.get(request.endpoint, queryParameters: map, options: options);

    if (converter == null) {
      if (response.data is String) return (jsonDecode(response.data));

      return response.data;
    }

    if (response.data is List<dynamic>) {
      //convert it to a map
      Map<String, dynamic> map = {};
      for (var i = 0; i < response.data.length; i++) {
        map[i.toString()] = response.data[i];
      }

      return converter(map);
    }

    if (response.data is String) {
      return converter(jsonDecode(response.data));
    }

    return converter(response.data);
  }

  @override
  Future<T> post<T>(
      {BaseHttpRequest request,
      T Function(Map<String, dynamic> data) converter}) async {
    var options = Options(
      contentType: Headers.formUrlEncodedContentType,
    );

    final map = request.toMap();
    // map["apiVersion"] = apiVersion;

    final response =
        await dio.post(request.endpoint, data: map, options: options);

    if (converter == null) {
      if (response.data is String) return (jsonDecode(response.data));
      return response.data;
    }

    if (response.data is String) {
      return converter(jsonDecode(response.data));
    }

    return converter(response.data);
  }

  @override
  Future<T> delete<T>(
      {BaseHttpRequest request,
      T Function(Map<String, dynamic> data) converter}) async {
    var options = Options(
      contentType: Headers.formUrlEncodedContentType,
    );

    final map = request.toMap();
    // map["apiVersion"] = apiVersion;

    final response =
        await dio.delete(request.endpoint, data: map, options: options);

    if (converter == null) {
      if (response.data is String) return (jsonDecode(response.data));

      return response.data;
    }

    if (response.data is String) {
      return converter(jsonDecode(response.data));
    }

    return converter(response.data);
  }

  @override
  Future<T> put<T>(
      {BaseHttpRequest request,
      T Function(Map<String, dynamic> data) converter}) async {
    var options = Options(
      contentType: Headers.formUrlEncodedContentType,
    );

    final map = request.toMap();
    //map["apiVersion"] = apiVersion;

    final response =
        await dio.put(request.endpoint, data: map, options: options);

    if (converter == null) {
      if (response.data is String) return (jsonDecode(response.data));
      return response.data;
    }

    if (response.data is String) {
      return converter(jsonDecode(response.data));
    }

    return converter(response.data);
  }
}
