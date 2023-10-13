part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class LoginCompleted extends AuthState {
  final LoginResponse? loginResponse;

  LoginCompleted(this.loginResponse);
}

class RegisterCompleted extends AuthState {
  final RegisterResponse? registerResponse;

  RegisterCompleted(this.registerResponse);
}

class AuthFailed extends AuthState {
  final String? message;

  AuthFailed(this.message);
}
