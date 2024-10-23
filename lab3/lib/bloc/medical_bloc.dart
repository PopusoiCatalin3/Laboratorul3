import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'medical_event.dart';
import 'medical_state.dart';

class MedicalBloc extends Bloc<MedicalEvent, MedicalState> {
  MedicalBloc() : super(MedicalInitial()) {
    on<LoadMedicalData>((event, emit) async {
      emit(MedicalLoading());
      try {
        final String response =
            await rootBundle.rootBundle.loadString('assets/data.json');
        final data = await json.decode(response);
        emit(MedicalLoaded(data));
      } catch (e) {
        emit(MedicalError("Failed to load data"));
      }
    });
  }
}
