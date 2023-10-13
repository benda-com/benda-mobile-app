part of 'risk_bloc.dart';

@immutable
abstract class RiskState extends Equatable {}

class RiskInitial extends RiskState {
  @override
  List<Object?> get props => [];
}

class RiskLoading extends RiskState {
  @override
  List<Object?> get props => [];
}

class RiskCompleted extends RiskState {
  final RiskResponse? riskResponse;

  RiskCompleted(this.riskResponse);
  @override
  List<Object?> get props => [riskResponse];
}

class RiskFailed extends RiskState {
  final String? message;

  RiskFailed(this.message);
  @override
  List<Object?> get props => [message];
}
