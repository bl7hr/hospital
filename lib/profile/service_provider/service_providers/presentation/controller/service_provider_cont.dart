import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/screens/service_providers.dart';

import '../../data/models/service_provider_model.dart';



class ServiceProvidersProvider with ChangeNotifier{
/*List<ReviewsModel> _list=[];
List<ReviewsModel> get getReview{
  return _list;
}*/
  List<ServiceProviderModel> _myNotes=[];
  List<ServiceProviderModel> get getMyNotes{
    return _myNotes;
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
