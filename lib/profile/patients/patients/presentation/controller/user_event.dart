import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/patient_repository.dart';
import '../../data/tips_repository.dart';
import '../../domain/tip_model.dart';

final userProvider = ChangeNotifierProvider<PatientNotifier>(
      (ref) => PatientNotifier(tipRepository: FirebaseTipRepository()),
);

class PatientNotifier extends ChangeNotifier {
  UserRepository tipRepository;
  PatientNotifier({required this.tipRepository});

  Future<List<UserModel>> loadList() async {
    return await tipRepository.getAllTips();
  }

 Future<void> User(String name, String country,int stars, bool inhome,bool inhospital,bool online ,String image  ) async {
    await tipRepository.User(
        userModel:UserModel(name,country,stars,inhome,inhospital,online,image));
  }
}