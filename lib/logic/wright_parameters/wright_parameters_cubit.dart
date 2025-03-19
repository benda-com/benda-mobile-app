import 'package:benda/data/model/response/response_model.dart';
import 'package:benda/data/model/response/wright_parameters_response.dart';
import 'package:benda/data/model/wright_parameters_model.dart';
import 'package:benda/data/repositories/wright_params_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

part 'wright_parameters_state.dart';

class WrightParametersCubit extends Cubit<WrightParametersState> {
  final WrightParamsRepository wrightParamsRepo;
  String? token;

  WrightParametersCubit({required this.wrightParamsRepo, this.token})
      : super(WrightParametersInitial());

  Future<ResponseModel> wrightParameters(
      WrightParametersModel wrightParametersModel, token) async {
    emit(WrightParametersLoading());
    Response response =
        await wrightParamsRepo.wrightParameters(wrightParametersModel, token!);
    ResponseModel responseModel;
    if (response.statusCode == 201) {
      emit(WrightParametersCompleted(
          WrightParametersResponse.fromJson(response.data)));
      responseModel = ResponseModel(
          isSuccess: true, message: "Post wright parameters completed!");
    } else {
      emit(WrightParametersInitial());
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
    }
    return responseModel;
  }

  Future<ResponseModel> getParameters(String? email) async {
    emit(WrightParametersLoading());
    Response response = await wrightParamsRepo.singleWrightParameters(email);
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      emit(WrightParametersCompleted(
          WrightParametersResponse.fromJson(response.data[0])));
      responseModel = ResponseModel(
          isSuccess: true, message: "get wright parameters completed!");
    } else {
      emit(WrightParametersInitial());
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
    }
    return responseModel;
  }
}
