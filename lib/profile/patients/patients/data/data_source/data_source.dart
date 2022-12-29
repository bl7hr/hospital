
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testfirebase/core/resource/strings.dart';
import 'package:testfirebase/profile/patients/patients/data/models/patient_model.dart';

import '../../domain/patient_entities.dart';
import '../../domain/repository.dart';

class DataSourcePatients extends BaseUsersRepository {
  final collection = FirebaseFirestore.instance.collection(StringsGeneral.patientsCollection);

  @override
  Future<List<PatientModel>> getData() async {
    return await collection
        .get()
        .then((querySnapshot) =>
        querySnapshot.docs.map((e) => PatientModel.fromMap(e.data())).toList());
  }

  @override
  Future<void> createPatient({required PatientModel userModel}) async{
    await collection.add(userModel.toMap());
  }

}
