part of 'preg_to_gyneco_bloc.dart';

@immutable
abstract class PregToGynecoEvent extends Equatable {}

class PregToGynecoLoadEvent extends PregToGynecoEvent {
  final int? pregnant_id;
  final int? gynecogist_id;

  PregToGynecoLoadEvent(this.pregnant_id, this.gynecogist_id);

  @override
  List<Object?> get props => [];
}
