import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testfirebase/firebase_options.dart';
import 'package:testfirebase/profile/patients/presentation/screens/pages/patient_fillter/patient_fillter.dart';
import 'package:testfirebase/profile/patients/presentation/screens/pages/patient_page/patient.dart';
import 'package:testfirebase/profile/patients/presentation/screens/pages/patients/patients.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//nvc ddd
        primarySwatch: Colors.blue,
      ),
      home:  PatientFillter(),
    );
  }
}
