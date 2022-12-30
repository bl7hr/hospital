
import '../../domain/entities/service_providers.dart';

class ServiceProviderModel extends ServiceProvider{
  ServiceProviderModel(super.name,
      super.country,
      super.stars,
      super.inhome,
      super.inhospital,
      super.online,
      super.image,
      super.subcountry,
      super.session,
      super.patients,
      super.documantation,
      super.lang,
      super.specialties,
      super.discription,super.price);
  factory ServiceProviderModel.fromJson(Map<String,dynamic> json)=>
      ServiceProviderModel(
      json['name'],
      json['country'],
      json['stars'],
      json['inhome'],
      json['inhospital'],
      json['online'],
      json['image'],
      json['subcountry'],
      json['session'],
      json['patients'],
      json['documantation'],
      json['lang'],json['specialties'],json['discription'],json['price']);
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
  factory ServiceProviderModel.fromMap(Map<String, dynamic> map) {
    return ServiceProviderModel(map['name'],map[ 'country'], map['stars'], map['inhome'], map['inhospital'],
        map['online'], map['image'],map[ 'subcountry'],
        map[  'session'],map[ 'patients'],map[ 'documantation'],map[ 'lang'],map['specialties'],map['discription'],map['price'])

    ;
  }
}/*
class ReviewsModel extends ReviewServiceProvider{

  ReviewsModel(super.name,super.image,super.date,super.review);
  factory ReviewsModel .fromJson(Map<String,dynamic> json)=>
      ReviewsModel(
        json['name'],
        json['image'],
        json['date'],
        json['review'],
      );
  Map<String,dynamic> toMap(){
    return {
      'name':this.name,
      'image':this.image,

      'date':this.date,
      'review': this.review
    }as Map<String,dynamic> ;
  }
  factory ReviewsModel.fromMap(Map<String, dynamic> map) {
    return ReviewsModel(map['name'],map[ 'image'], map['date'], map['review'],)

    ;
  }
}*/