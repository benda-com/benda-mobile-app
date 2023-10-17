import 'package:benda/data/model/response/response_model.dart';
import 'package:benda/data/model/wright_parameters_model.dart';
import 'package:benda/data/providers/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WrightParamsRepository {
  final apiClient = ApiClient(appBaseUrl: "https://www.bendacm.net/api");

  Future<Response> wrightParameters(
      WrightParametersModel wrightParametersModel, String token) async {
    apiClient.updateHeader(token);
    return await apiClient.postData(
        "/wright-parameters/", wrightParametersModel.toJson());
  }

  // Future<Response> singleWrightParameters(String? email) async {
  //   return await apiClient.getData("/wright-parameters/?owner=$email");
  // }

  Future<Response> singleWrightParameters(String? email) async {
    Response response =
        await apiClient.getData("/wright-parameters/?owner=$email");
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      responseModel = ResponseModel(
          isSuccess: true, message: "wright-parameters completed!");
    } else {
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
      throw Exception(responseModel.message);
    }
    return response;
  }
}
