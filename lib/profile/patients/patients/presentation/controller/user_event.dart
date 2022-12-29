import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_source/data_source.dart';
import '../../data/repository/patient_repository.dart';
import '../../domain/repository.dart';
import '../../data/models/patient_model.dart';


final patientProvider = ChangeNotifierProvider<PatientNotifier>(
      (ref) => PatientNotifier(repPatient: DataSourcePatients()),
);



class PatientNotifier extends ChangeNotifier {
  BaseUsersRepository repPatient;

  PatientNotifier({required this.repPatient});

  Future<List<PatientModel>> loadList() async {
    return await repPatient.getData();
  }


 Future<void> createPatient(String name,String country, int stars,bool inhome,bool inhospital,bool online,String image
     ,List<dynamic> diseases,int groupSession,int IndividualSession,List<dynamic> lang,String subcountry  ) async {
    await repPatient.createPatient(
        userModel:PatientModel(name, country, stars, inhome, inhospital, online, image, diseases, groupSession, IndividualSession, lang, subcountry));
  }

  final indexTipsProvider = StateProvider<int>((ref) {
  return 0;});
}
