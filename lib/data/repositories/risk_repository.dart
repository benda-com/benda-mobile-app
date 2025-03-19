import 'package:benda/data/model/response/response_model.dart';
import 'package:benda/data/providers/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RiskRepository {
  final apiClient = ApiClient(appBaseUrl: "https://www.bendacm.net/api");

  Future<Response> getRisk(int? id) async {
    Response response =
        await apiClient.getData('/wright-parameters/$id/calculate_risk/');
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      responseModel =
          ResponseModel(isSuccess: true, message: "risk completed!");
    } else {
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
      throw Exception(responseModel.message);
    }
    return response;
  }
}
