import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testfirebase/firebase_options.dart';
import 'package:testfirebase/profile/patients/patient_fillter/screens/patient_fillter.dart';
import 'package:testfirebase/profile/patients/patients/presentation/controller/patientprovider.dart';
import 'package:testfirebase/profile/patients/patients/presentation/screens/patient.dart';
import 'package:testfirebase/profile/patients/patients/presentation/screens/patients.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/controller/service_provider_cont.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/screens/service_providers.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(BuildContext context)=>Patientprovider(),
      child: MaterialApp(

        debugShowCheckedModeBanner: false,

        home:  PatientFillter(),
      ),
    );
  }
}
