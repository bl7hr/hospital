import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testfirebase/profile/patients/patients/data/patient_repository.dart';
import 'package:testfirebase/profile/service_provider/service_providers/data/service_provider_repository.dart';
import 'package:testfirebase/profile/service_provider/service_providers/domain/service_provider_class.dart';

import '../domain/patient_class.dart';


final firestorePatientRepositoryProvider=Provider<FirestorePatientRepository>((ref)=>
    FirestorePatientRepository());
class FirestorePatientRepository implements PatientRepository{
  CollectionReference Patients=FirebaseFirestore.instance.collection('users');
  @override
  Future<PatientClass> getPatient({required String id}) async{
    return await Patients.doc(id).get().then((DocumentSnapshot doc){
      final  data =doc.data() as Map<String,dynamic>;
      return PatientClass.fromJson(data).copyWith(id: doc.id);
    }
      ,onError: (e)=>throw e,
    );
  }

  @override
  Future<List<PatientClass>> getPatients() async {
    return await Patients.get().then(
          (QuerySnapshot doc){
        return doc.docs
            .map((e) => PatientClass.fromJson(e.data() as Map<String,dynamic>)
            .copyWith(id: e.id))
            .toList();
      }
      ,onError: (e)=>throw e,
    );
  }


  @override
  Future<List<PatientClass>> searchInPatientsByName({required String name}) {
    // TODO: implement searchInPatientsByName
    throw UnimplementedError();
  }

}