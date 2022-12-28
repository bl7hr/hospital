import 'dart:convert';

import '../../../service_provider/service_providers/domain/entities/users.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first


class UserModel extends Users{
  UserModel(super.name, super.country, super.stars, super.inhome, super.inhospital, super.online, super.image);
  factory UserModel.fromJson(Map<String,dynamic> json)=>UserModel(json['name'], json['country'], json['stars'],
      json['inhome'], json['inhospital'], json['online'], json['image']);
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
}