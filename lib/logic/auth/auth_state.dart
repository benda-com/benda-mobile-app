part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class LoginCompleted extends AuthState {
  final String? token;
  final bool? is_gynecologist;
  final int? id;

  LoginCompleted(this.token, this.is_gynecologist, this.id);
}

class RegisterCompleted extends AuthState {
  final RegisterResponse? registerResponse;

  RegisterCompleted(this.registerResponse);
}

class AuthFailed extends AuthState {
  final String? message;

  AuthFailed(this.message);
}
