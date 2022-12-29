import 'package:equatable/equatable.dart';

class Patient extends Equatable{
  final String name ;
  final String country;
  final int stars;
  final bool inhome;
  final bool inhospital;
  final bool online;
  final String image;
  final String subcountry;
  final int groupSession;
  final int IndividualSession;
  final List<dynamic> diseases;
  final List<dynamic> lang;

  const Patient(
      this.name,
      this.country,
      this.stars,
      this.inhome,
      this.inhospital,
      this.online,
      this.image,
      this.diseases,
      this.groupSession,
      this.IndividualSession,
      this.lang,
      this.subcountry);

  @override
  List<Object?> get props => [name,
    country,
    stars,
    inhome,
    inhospital,
    online,
    image,diseases,groupSession,IndividualSession,lang,subcountry];
}
class ReviewPatient{
  final String name;
  final String image;
  final String date;
  final String review;
  ReviewPatient( this.name,this.image,this.date,this.review);

}