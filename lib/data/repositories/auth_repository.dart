import 'package:benda/data/model/register_model.dart';
import 'package:benda/data/model/wright_parameters_model.dart';
import 'package:benda/data/providers/api_client.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  final apiClient = ApiClient(appBaseUrl: "https://www.bendacm.net/api");

  Future<Response> register(RegisterModel registerModel) async {
    return await apiClient.postData('/register/', registerModel.toJson());
  }

  Future<Response> login(
      {required String email, required String password}) async {
    return await apiClient
        .postData("/login/", {"email": email, "password": password});
  }

  Future<Response> wrightParameters(
      WrightParametersModel wrightParametersModel, String token) async {
    apiClient.updateHeader(token);
    return await apiClient.postData(
        "/wright-parameters/", wrightParametersModel.toJson());
  }
}
