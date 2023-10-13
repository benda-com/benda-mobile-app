import 'package:benda/data/model/response/risk_response.dart';
import 'package:benda/data/repositories/risk_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'risk_event.dart';
part 'risk_state.dart';

class RiskBloc extends Bloc<RiskEvent, RiskState> {
  final RiskRepository riskRepo;

  RiskBloc({required this.riskRepo}) : super(RiskInitial()) {
    on<RiskLoadEvent>((event, emit) async {
      emit(RiskLoading());
      try {
        final response = await riskRepo.getRisk(event.id);
        emit(RiskCompleted(RiskResponse.fromJson(response.data)));
      } catch (e) {
        emit(RiskInitial());
        emit(RiskFailed(e.toString()));
      }
    });
  }
}
