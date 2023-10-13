import 'package:benda/data/model/response/user_response.dart';
import 'package:benda/data/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'preg_to_gyneco_event.dart';
part 'preg_to_gyneco_state.dart';

class PregToGynecoBloc extends Bloc<PregToGynecoEvent, PregToGynecoState> {
  final UserRepository userRepo;
  PregToGynecoBloc({required this.userRepo}) : super(PregToGynecoInitial()) {
    on<PregToGynecoLoadEvent>((event, emit) async {
      emit(PregToGynecoLoading());
      try {
        final response = await userRepo.linkPregnatToGynecologist(
            event.pregnant_id, event.gynecogist_id);
        emit(PregToGynecoCompleted(UserResponse.fromJson(response.data)));
      } catch (e) {
        emit(PregToGynecoInitial());
        emit(PregToGynecoFailed(e.toString()));
      }
    });
  }
}
