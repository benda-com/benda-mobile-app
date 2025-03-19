part of 'wright_parameters_bloc.dart';

@immutable
abstract class WrightParametersState {}

class WrightParametersInitial extends WrightParametersState {}

class WrightParametersLoading extends WrightParametersState {}

class WrightParametersCompleted extends WrightParametersState {
  final WrightParametersResponse? wrightParametersResponse;

  WrightParametersCompleted(this.wrightParametersResponse);
}

class WrightParametersFailed extends WrightParametersState {
  final String? message;

  WrightParametersFailed(this.message);
}
