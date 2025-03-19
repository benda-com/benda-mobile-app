import 'dart:convert';
import 'package:benda/data/model/response/error_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as Http;

class ApiClient {
  final String appBaseUrl;

  String? token = '';
  Map<String, String> _mainHeaders = {};

  ApiClient({required this.appBaseUrl}) {
    debugPrint('Token: $token');

    updateHeader(
      token,
    );
  }

  void updateHeader(String? token) {
    Map<String, String> _header = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token'
    };
    if (token != '') {
      _header = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Token $token'
      };
    }

    _mainHeaders = _header;
  }

  Future<Response> getData(String uri,
      {Map<String, dynamic>? query, Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      Http.Response _response = await Http.get(
        Uri.parse(appBaseUrl + uri),
        headers: headers ?? _mainHeaders,
      ).timeout(const Duration(seconds: 60));
      return handleResponse(_response, uri);
    } catch (e) {
      return Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 1,
          statusMessage: 'Connection to API failed');
    }
  }

  Future<Response> postData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      Http.Response _response = await Http.post(
        Uri.parse(appBaseUrl + uri),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(const Duration(seconds: 60));
      return handleResponse(_response, uri);
    } catch (e) {
      return Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 1,
          statusMessage: 'Connection to API failed');
    }
  }

  Future<Response> putData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      Http.Response _response = await Http.put(
        Uri.parse(appBaseUrl + uri),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(const Duration(seconds: 60));
      return handleResponse(_response, uri);
    } catch (e) {
      return Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 1,
          statusMessage: 'Connection to API failed');
    }
  }

  Future<Response> patchData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      Http.Response _response = await Http.patch(
        Uri.parse(appBaseUrl + uri),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(const Duration(seconds: 60));
      return handleResponse(_response, uri);
    } catch (e) {
      return Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 1,
          statusMessage: 'Connection to API failed');
    }
  }

  Future<Response> deleteData(String uri,
      {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      Http.Response response = await Http.delete(
        Uri.parse(appBaseUrl + uri),
        headers: headers ?? _mainHeaders,
      ).timeout(const Duration(seconds: 60));
      return handleResponse(response, uri);
    } catch (e) {
      return Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 1,
          statusMessage: 'Connection to API failed');
    }
  }

  Response handleResponse(Http.Response response, String uri) {
    dynamic _body;
    try {
      _body = jsonDecode(response.body);
    } catch (e) {}
    Response _response = Response(
      data: _body ?? response.body,
      statusMessage: response.reasonPhrase,
      requestOptions: RequestOptions(
          path: response.request!.url.path,
          method: response.request!.method,
          baseUrl: response.request!.url.toString(),
          headers: response.request!.headers),
      statusCode: response.statusCode,
    );
    if (_response.statusCode != 200 &&
        _response.data != null &&
        _response.data is! String) {
      if (_response.data.toString().startsWith('{errors: [{code:')) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(_response.data);
        _response = Response(
            statusCode: _response.statusCode,
            data: _response.data,
            statusMessage: errorResponse.errors![0].message,
            requestOptions: _response.requestOptions);
      } else if (_response.data.toString().startsWith('{message')) {
        _response = Response(
            statusCode: _response.statusCode,
            data: _response.data,
            statusMessage: _response.data['message'],
            requestOptions: _response.requestOptions);
      }
    } else if (_response.statusCode != 200 && _response.data == null) {
      _response = Response(
          statusCode: 0,
          statusMessage: 'Connection to API failed',
          requestOptions: _response.requestOptions);
    }
    debugPrint(
        '====> API Response: [${_response.statusCode}] $uri\n${_response.data}');
    return _response;
  }
}
