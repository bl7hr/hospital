

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testfirebase/profile/patients/patients/data/tips_repository.dart';

import '../domain/tip_model.dart';

class FirebaseTipRepository extends UserRepository {
  final referigeratorCollection = FirebaseFirestore.instance.collection("tip");

  @override
  Future<void> User({required UserModel userModel}) async {
    await referigeratorCollection.add(userModel.toMap());
  }

  @override
  Future<List<UserModel>> getAllTips() {
    // TODO: implement getAllTips
    throw UnimplementedError();
  }

  //@override
 // Future<List<UserModel>> getAllTips() async {
   // return await referigeratorCollection
      //  .orderBy("dateAdded", descending: true)
       // .get()
     //   .then((querySnapshot) =>
       //     querySnapshot.docs.map((e) => UserModel.fromMap(e.data())).toList());
 // }
}
