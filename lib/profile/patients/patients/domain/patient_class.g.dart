// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientClass _$$_PatientClassFromJson(Map<String, dynamic> json) =>
    _$_PatientClass(
      id: json['_id'] as String?,
      name: json['name'] as String,
      country: json['country'] as String,
      stars: json['stars'] as int?,
      inhome: json['inhome'] as bool?,
      inhospital: json['inhospital'] as bool?,
      online: json['online'] as bool?,
      image: json['image'] as String,
      subcountry: json['subcountry'] as String,
      session: json['session'] as int?,
      individualSession: json['individualSession'] as int?,
      lang: json['lang'] as List<dynamic>,
      diseases: json['diseases'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_PatientClassToJson(_$_PatientClass instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'stars': instance.stars,
      'inhome': instance.inhome,
      'inhospital': instance.inhospital,
      'online': instance.online,
      'image': instance.image,
      'subcountry': instance.subcountry,
      'session': instance.session,
      'individualSession': instance.individualSession,
      'lang': instance.lang,
      'diseases': instance.diseases,
    };
