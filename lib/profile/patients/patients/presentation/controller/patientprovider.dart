import 'package:flutter/material.dart';

import '../../data/models/patient_model.dart';

class Patientprovider with ChangeNotifier{
  List<bool> c=[true];
  void m(bool x){
    x=!x;
    c.add(x);
    notifyListeners();
  }
  List<PatientModel> _myNotes=[];
  List<PatientModel> get getMyNotes{
    return _myNotes;
  }
  void addMyNote(
      String name,
      String country,
      int stars,
      bool inhome,
      bool inhospital,
      bool online,
      String image,
      List<dynamic> diseases,
      int groupSession,
      int IndividualSession,
      List<dynamic> lang,
      String subcountry
      ){
    PatientModel noteModel=PatientModel(
        name,
        country,
        stars,
        inhome,
        inhospital,
        online,
        image,
        diseases,
        groupSession,
        IndividualSession,
        lang,
        subcountry);
    _myNotes.add(noteModel);
    notifyListeners();
  }
}
