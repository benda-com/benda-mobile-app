import 'package:benda/data/model/response/wright_parameters_response.dart';
import 'package:benda/data/repositories/wright_params_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'wright_parameters_event.dart';
part 'wright_parameters_state.dart';

class WrightParametersBloc
    extends Bloc<WrightParametersEvent, WrightParametersState> {
  final WrightParamsRepository wrightParamsRepo;

  WrightParametersBloc({required this.wrightParamsRepo})
      : super(WrightParametersInitial()) {
    on<WrightParametersLoadEvent>((event, emit) async {
      emit(WrightParametersLoading());
      try {
        final response =
            await wrightParamsRepo.singleWrightParameters(event.email);
        emit(WrightParametersCompleted(
            WrightParametersResponse.fromJson(response.data[0])));
      } catch (e) {
        emit(WrightParametersInitial());
        emit(WrightParametersFailed(e.toString()));
      }
    });
  }
}
