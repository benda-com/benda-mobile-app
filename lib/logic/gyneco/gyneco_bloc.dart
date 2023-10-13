import 'package:benda/data/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'gyneco_event.dart';
part 'gyneco_state.dart';

class GynecoBloc extends Bloc<GynecoEvent, GynecoState> {
  final UserRepository userRepo;

  GynecoBloc({required this.userRepo}) : super(GynecoInitial()) {
    on<GynecoLoadEvent>((event, emit) async {
      emit(GynecoLoading());
      try {
        final List result = await userRepo.gynecoList();

        emit(GynecoCompleted(result));
      } catch (e) {
        emit(GynecoInitial());
        emit(GynecoFailed(e.toString()));
      }
    });
  }
}
