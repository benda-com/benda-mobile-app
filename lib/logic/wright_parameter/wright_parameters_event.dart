part of 'wright_parameters_bloc.dart';

@immutable
abstract class WrightParametersEvent extends Equatable {}

class WrightParametersLoadEvent extends WrightParametersEvent {
  final String? email;
  WrightParametersLoadEvent(this.email);
  @override
  List<Object?> get props => [];
}

class ListWrightParametersLoadEvent extends WrightParametersEvent {
  @override
  List<Object?> get props => [];
}
