part of 'gyneco_bloc.dart';

@immutable
abstract class GynecoEvent extends Equatable {}

class GynecoLoadEvent extends GynecoEvent {
  GynecoLoadEvent();
  @override
  List<Object?> get props => [];
}
