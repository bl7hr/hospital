// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_provider_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceProviderClass _$$_ServiceProviderClassFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceProviderClass(
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
      patients: json['patients'] as int?,
      documantation: json['documantation'] as List<dynamic>,
      lang: json['lang'] as List<dynamic>,
      specialties: json['specialties'] as List<dynamic>,
      discription: json['discription'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_ServiceProviderClassToJson(
        _$_ServiceProviderClass instance) =>
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
      'patients': instance.patients,
      'documantation': instance.documantation,
      'lang': instance.lang,
      'specialties': instance.specialties,
      'discription': instance.discription,
      'price': instance.price,
    };
