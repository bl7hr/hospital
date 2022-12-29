import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/screens/service_providers.dart';

import '../../data/models/service_provider_model.dart';



class ServiceProvidersProvider with ChangeNotifier{
 List< bool> list=[false,false,false];
  List<ServiceProviderModel> _myNotes=[];
  List<ServiceProviderModel> get getMyNotes{
    return _myNotes;
  }
  void chip(bool a,bool b,bool c){
    list[0]=a;
    list[1]=b;
    list[2]=c; notifyListeners();
  }
  void addMyNote(
  String name ,
  String country,
  int stars,
  bool inhome,
  bool inhospital,
  bool online,
  String image,
  String subcountry,
  int session,
  int patients,
  String price,
  List<dynamic> documantation,
  List<dynamic> lang,
  List<dynamic> specialties,
  String discription
      ){
    ServiceProviderModel noteModel=ServiceProviderModel(name, country, stars, inhome, inhospital, online, image, subcountry, session, patients, documantation, lang, specialties, discription, price);
    _myNotes.add(noteModel);
    notifyListeners();
  }
}
