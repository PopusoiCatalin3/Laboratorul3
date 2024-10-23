import 'package:equatable/equatable.dart';

abstract class MedicalEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadMedicalData extends MedicalEvent {}
