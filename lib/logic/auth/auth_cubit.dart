import 'package:benda/data/model/register_model.dart';
import 'package:benda/data/model/response/register_response.dart';
import 'package:benda/data/model/response/response_model.dart';
import 'package:benda/data/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepo;
  AuthCubit({required this.authRepo}) : super(AuthInitial());

  Future<ResponseModel> register(RegisterModel registerModel) async {
    emit(AuthLoading());
    Response response = await authRepo.register(registerModel);
    ResponseModel responseModel;
    if (response.statusCode == 201) {
      emit(RegisterCompleted(RegisterResponse.fromJson(response.data)));
      responseModel =
          ResponseModel(isSuccess: true, message: "Registration completed!");
    } else {
      emit(AuthInitial());
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
    }
    return responseModel;
  }

  Future<ResponseModel> login(String email, password) async {
    emit(AuthLoading());
    Response response = await authRepo.login(email: email, password: password);
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      emit(LoginCompleted(response.data["token"]));
      debugPrint(response.data["token"]);
      responseModel =
          ResponseModel(isSuccess: true, message: "Login completed!");
    } else {
      emit(AuthInitial());
      //emit(AuthFailed(response.statusMessage!));
      debugPrint(response.statusMessage!);
      responseModel =
          ResponseModel(isSuccess: false, message: response.statusMessage!);
    }
    return responseModel;
  }
}
