import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


final restaurantProvider = StreamProvider.autoDispose((ref) {
  final service = ref.watch(restaurantServiceProvider);
  return service.restaurantModel();
});

final restaurantServiceProvider = Provider<RestaurantService>((ref) {
  final firebase = FirebaseFirestore.instance;
  return RestaurantService(firebase);
});

class RestaurantService {
  final FirebaseFirestore _firebase;

  RestaurantService(this._firebase);

  Stream<List<RestaurantModel>> restaurantModel() {
    return _firebase.collection('users').snapshots().map((event) => event.docs.map((e) => RestaurantModel.fromFirebase(e.data())).toList());
  }
}
class RestaurantModel {
  final String? name;
  final String? phone;
  final String? fullAddress;
  final String? yearsInBusiness;
  final String? priceRange;
  final String? websiteLink;
  final String? documentID;

  RestaurantModel({
    required this.name,
    required this.phone,
    required this.fullAddress,
    required this.yearsInBusiness,
    required this.priceRange,
    required this.websiteLink,
    required this.documentID,
  });

  factory RestaurantModel.fromFirebase(Map<String, dynamic> restaurantModel) {

    return RestaurantModel(
      name: restaurantModel['name'],
      phone: restaurantModel['phone'],
      fullAddress: restaurantModel['fullAddress'],
      yearsInBusiness: restaurantModel['yearsInBusiness'],
      priceRange: restaurantModel['priceRange'],
      websiteLink: restaurantModel['websiteLink'],
      //THIS IS WHERE I AM LOST AS THIS GENERATES ERROR
      //Instance members can't be accessed from a factory constructor.
      documentID: restaurantModel[0],
    );
  }
}