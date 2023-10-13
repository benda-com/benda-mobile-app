part of 'gyneco_bloc.dart';

@immutable
abstract class GynecoState extends Equatable {}

final class GynecoInitial extends GynecoState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class GynecoLoading extends GynecoState {
  @override
  List<Object?> get props => [];
}

class GynecoCompleted extends GynecoState {
  final List users;

  GynecoCompleted(this.users);

  @override
  List<Object?> get props => [];
}

class GynecoFailed extends GynecoState {
  final String? message;

  GynecoFailed(this.message);
  @override
  List<Object?> get props => [message];
}
