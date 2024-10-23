import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:lab3/models/doctor_model.dart';
import 'package:lab3/models/center_model.dart';

class DataRepository {
  Future<Map<String, List<dynamic>>> loadData() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final Map<String, dynamic> data = json.decode(response);

    List<Doctor> doctors =
        (data['doctors'] as List).map((json) => Doctor.fromJson(json)).toList();

    List<Center> centers =
        (data['centers'] as List).map((json) => Center.fromJson(json)).toList();

    return {'doctors': doctors, 'centers': centers};
  }
}
