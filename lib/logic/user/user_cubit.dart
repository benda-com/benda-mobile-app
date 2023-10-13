import 'package:benda/data/model/response/user_response.dart';
import 'package:benda/data/repositories/user_repository.dart';
import 'package:benda/logic/user/user_event.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepo;

  UserBloc({required this.userRepo}) : super(UserInitial()) {
    on<UserLoadEvent>((event, emit) async {
      emit(UserLoading());
      try {
        final response = await userRepo.singleUser(event.id);
        emit(UserCompleted(UserResponse.fromJson(response.data)));
      } catch (e) {
        emit(UserInitial());
        emit(UserFailed(e.toString()));
      }
    });
  }
}
