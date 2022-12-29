
import 'package:equatable/equatable.dart';

class ServiceProvider extends Equatable{
  final String name ;
  final String country;
  final int stars;
  final bool inhome;
  final bool inhospital;
  final bool online;
  final String image;
  final String subcountry;
  final int session;
  final int patients;
  final List<dynamic> documantation;
  final List<dynamic> lang;
  final List<dynamic> specialties;
  final String discription;
  final String price;
  ServiceProvider(
      this.name,
      this.country,
      this.stars,
      this.inhome,
      this.inhospital,
      this.online,
      this.image,
      this.subcountry,
      this.session,
      this.patients,
      this.documantation,
      this.lang,
      this.specialties,
      this.discription,this.price);

  @override
  List<Object?> get props => [name,
    country,
    stars,
    inhome,
    inhospital,
    online,
    image,subcountry,session,documantation,lang,specialties,discription,patients];
}
class ReviewServiceProvider{
  final String name;
  final String image;
  final String date;
  final String review;
  ReviewServiceProvider( this.name,this.image,this.date,this.review);

}