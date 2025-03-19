import 'package:benda/data/model/response/patient_response.dart';
import 'package:benda/data/model/response/response_model.dart';
import 'package:benda/data/model/response/user_response.dart';
import 'package:benda/data/providers/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UserRepository {
  final apiClient = ApiClient(appBaseUrl: "https://www.bendacm.net/api");

  Future<Response> singleUser(int? id) async {
    Response response = await apiClient.getData('/users/$id');
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      responseModel =
          ResponseModel(isSuccess: true, message: "user completed!");
    } else {
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
      throw Exception(responseModel.message);
    }
    return response;
  }

  Future<Response> linkPregnatToGynecologist(
      int? pregnant_id, int? gynecogist_id) async {
    Response response = await apiClient
        .patchData('/users/$pregnant_id/', {"follow_id": gynecogist_id});
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      responseModel =
          ResponseModel(isSuccess: true, message: "link completed!");
    } else {
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
      throw Exception(responseModel.message);
    }
    return response;
  }

  Future<List> gynecoList() async {
    List result;
    Response response = await apiClient.getData('/gynecologists/');
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      result = response.data.map((e) => UserResponse.fromJson(e)).toList();
      responseModel =
          ResponseModel(isSuccess: true, message: "gyneco completed!");
    } else {
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
      throw Exception(responseModel.message);
    }
    return result;
  }

  Future<List> patientList(int? id) async {
    List result;
    Response response = await apiClient.getData('/users/$id/patients/');
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      result = response.data.map((e) => PatientResponse.fromJson(e)).toList();
      responseModel =
          ResponseModel(isSuccess: true, message: "patient completed!");
    } else {
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
      throw Exception(responseModel.message);
    }
    return result;
  }
}
