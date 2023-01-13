import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_class.freezed.dart';
part 'patient_class.g.dart';


@freezed
class PatientClass with _$PatientClass{

  const factory PatientClass({
    @JsonKey(name: '_id') String? id,
    required String name ,
    required String country,
     int? stars,
     bool? inhome,
     bool? inhospital,
     bool? online,
    required String image,
    required String subcountry,
     int? session,
    int? individualSession,
    required List<dynamic> lang,
    List<dynamic>? diseases,
  }) = _PatientClass;
  factory PatientClass.fromJson(Map<String, dynamic> json )=> _$PatientClassFromJson(json);
}