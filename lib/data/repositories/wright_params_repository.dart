import 'package:benda/data/model/wright_parameters_model.dart';
import 'package:benda/data/providers/api_client.dart';
import 'package:dio/dio.dart';

class WrightParamsRepository {
  final apiClient = ApiClient(appBaseUrl: "https://www.bendacm.net/api");

  Future<Response> wrightParameters(
      WrightParametersModel wrightParametersModel, String token) async {
    apiClient.updateHeader(token);
    return await apiClient.postData(
        "/wright-parameters/", wrightParametersModel.toJson());
  }
}
