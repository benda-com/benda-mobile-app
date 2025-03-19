part of 'patient_bloc.dart';

@immutable
abstract class PatientEvent extends Equatable {}

class PatientLoadEvent extends PatientEvent {
  final int? id;
  PatientLoadEvent(this.id);
  @override
  List<Object?> get props => [];
}
