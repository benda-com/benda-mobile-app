import 'package:benda/data/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'patient_event.dart';
part 'patient_state.dart';

class PatientBloc extends Bloc<PatientEvent, PatientState> {
  final UserRepository userRepo;

  PatientBloc({required this.userRepo}) : super(PatientInitial()) {
    on<PatientLoadEvent>((event, emit) async {
      emit(PatientLoading());
      try {
        final List result = await userRepo.patientList(event.id);
        emit(PatientCompleted(result));
      } catch (e) {
        emit(PatientInitial());
        emit(PatientFailed(e.toString()));
      }
    });
  }
}
