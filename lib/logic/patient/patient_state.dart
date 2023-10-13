part of 'patient_bloc.dart';

@immutable
abstract class PatientState extends Equatable {}

class PatientInitial extends PatientState {
  @override
  List<Object?> get props => [];
}

class PatientLoading extends PatientState {
  @override
  List<Object?> get props => [];
}

class PatientCompleted extends PatientState {
  final List users;

  PatientCompleted(this.users);
  @override
  List<Object?> get props => [users];
}

class PatientFailed extends PatientState {
  final String? message;

  PatientFailed(this.message);
  @override
  List<Object?> get props => [message];
}
