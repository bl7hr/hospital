import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../service_provider/service_providers/domain/entities/service_providers.dart';
import '../../domain/patient_entities.dart';



class PatientModel extends Patient{
  PatientModel(super.name,
      super.country,
      super.stars,
      super.inhome,
      super.inhospital,
      super.online,
      super.image,
      super.diseases,
      super.groupSession,
      super.IndividualSession,
      super.lang,
      super.subcountry);
  factory PatientModel.fromJson(Map<String,dynamic> json)=>PatientModel(
      json['name'],
      json['country'],
      json['stars'],
      json['inhome'],
      json['inhospital'],
      json['online'],
      json['image'],
      json['Diseases'],
      json['GroupSession'],
      json['IndividualSession'],
      json['Lang'],
      json['subcountry']);
  Map<String,dynamic> toMap(){
    return {
      'name':this.name,
      'country':this.country,
      'stars': this.stars,
      'inhome':this.inhome,
      'inhospital':this.inhospital,
      'online':this.online,
      'image':this.image,
    }as Map<String,dynamic> ;
  }
  factory PatientModel.fromMap(Map<String, dynamic> map) {
    return PatientModel(map['name'],map[ 'country'], map['stars'], map['inhome'], map['inhospital'],
        map['online'], map['image'],map[ 'diseases'],
        map[  'groupSession'],map[ 'IndividualSession'],map[ 'lang'],map[ 'subcountry'])

    ;
  }
}
getData()async{
  CollectionReference users= FirebaseFirestore.instance.collection('patient');
  QuerySnapshot querySnapshot=  await users.get();
  List<QueryDocumentSnapshot> listDocs=  querySnapshot.docs;
  listDocs.forEach((element) {
    print(element.data());
  });

}