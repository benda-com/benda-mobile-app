part of 'risk_bloc.dart';

@immutable
abstract class RiskEvent extends Equatable {}

class RiskLoadEvent extends RiskEvent {
  final int? id;
  RiskLoadEvent(this.id);
  @override
  List<Object?> get props => [];
}
