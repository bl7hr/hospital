import 'package:equatable/equatable.dart';

class Users extends Equatable{
  final String name ;
  final String country;
  final int stars;
  final bool inhome;
  final bool inhospital;
  final bool online;
  final String image;

  const Users(
      this.name,
      this.country,
      this.stars,
      this.inhome,
      this.inhospital,
      this.online,
      this.image);



  @override
  List<Object?> get props => [name,
  country,
  stars,
  inhome,
  inhospital,
  online,
  image];


}