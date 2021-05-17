
import 'dart:io';

abstract class BaseHttpService {
  Future<T> post<T>({
    BaseHttpRequest request,
    T Function(Map<String, dynamic> data) converter,
  });

  Future<T> get<T>(
      {BaseHttpRequest request,
        T Function(Map<String, dynamic> data) converter});

  Future<T> put<T>(
      {BaseHttpRequest request,
        T Function(Map<String, dynamic> data) converter});

  Future<T> delete<T>(
      {BaseHttpRequest request,
        T Function(Map<String, dynamic> data) converter});
}


abstract class BaseHttpRequest {
  final String endpoint;
  Map<String, dynamic> toMap();
  final ContentType contentType;
  final bool shouldCache;

  BaseHttpRequest({this.endpoint, this.contentType, this.shouldCache = false});
}
