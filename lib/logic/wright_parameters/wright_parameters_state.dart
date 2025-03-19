part of 'wright_parameters_cubit.dart';

@immutable
abstract class WrightParametersState {}

class WrightParametersInitial extends WrightParametersState {}

class WrightParametersLoading extends WrightParametersState {}

class WrightParametersCompleted extends WrightParametersState {
  final WrightParametersResponse? wrightParametersResponse;

  WrightParametersCompleted(this.wrightParametersResponse);
}

class WrightParametersStateFailed extends WrightParametersState {
  final String? message;

  WrightParametersStateFailed(this.message);
}
