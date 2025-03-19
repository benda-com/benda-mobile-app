part of 'preg_to_gyneco_bloc.dart';

@immutable
abstract class PregToGynecoState extends Equatable {}

class PregToGynecoInitial extends PregToGynecoState {
  @override
  List<Object?> get props => [];
}

class PregToGynecoLoading extends PregToGynecoState {
  @override
  List<Object?> get props => [];
}

class PregToGynecoCompleted extends PregToGynecoState {
  final UserResponse? userResponse;

  PregToGynecoCompleted(this.userResponse);
  @override
  List<Object?> get props => [userResponse];
}

class PregToGynecoFailed extends PregToGynecoState {
  final String? message;

  PregToGynecoFailed(this.message);
  @override
  List<Object?> get props => [];
}
