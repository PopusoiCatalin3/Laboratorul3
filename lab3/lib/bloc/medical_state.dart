import 'package:equatable/equatable.dart';

abstract class MedicalState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MedicalInitial extends MedicalState {}

class MedicalLoading extends MedicalState {}

class MedicalLoaded extends MedicalState {
  final Map<String, dynamic> data;

  MedicalLoaded(this.data);

  @override
  List<Object?> get props => [data];
}

class MedicalError extends MedicalState {
  final String message;

  MedicalError(this.message);

  @override
  List<Object?> get props => [message];
}
