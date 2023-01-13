
import 'package:freezed_annotation/freezed_annotation.dart';
part 'service_provider_class.freezed.dart';
part 'service_provider_class.g.dart';

@freezed
class ServiceProviderClass with _$ServiceProviderClass{

  const factory ServiceProviderClass({
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
    int? patients,
   required List<dynamic> documantation,
   required List<dynamic> lang,
   required List<dynamic> specialties,
   required String discription,
   required String price,
}) = _ServiceProviderClass;
  factory ServiceProviderClass.fromJson(Map<String, dynamic> json )=> _$ServiceProviderClassFromJson(json);
}