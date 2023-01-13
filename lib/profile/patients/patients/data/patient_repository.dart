
import 'package:testfirebase/profile/patients/patients/domain/patient_class.dart';

abstract class PatientRepository
{
  Future <List<PatientClass>> getPatients();
  Future <PatientClass> getPatient({required String id});
  Future <List<PatientClass>> searchInPatientsByName({required String name});
}