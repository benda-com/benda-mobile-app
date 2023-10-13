part of 'user_cubit.dart';

@immutable
abstract class UserState extends Equatable {}

class UserInitial extends UserState {
  @override
  List<Object?> get props => [];
}

class UserLoading extends UserState {
  @override
  List<Object?> get props => [];
}

class UserCompleted extends UserState {
  final UserResponse? userResponse;

  UserCompleted(this.userResponse);

  @override
  List<Object?> get props => [userResponse];
}

class UserFailed extends UserState {
  final String? message;

  UserFailed(this.message);
  @override
  List<Object?> get props => [message];
}
