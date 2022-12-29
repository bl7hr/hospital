

import 'package:flutter/material.dart';

import '../data/models/patient_model.dart';


abstract class BaseUsersRepository{

  Future <List<PatientModel>> getData();

  Future<void> createPatient({required PatientModel userModel}) ;
}
