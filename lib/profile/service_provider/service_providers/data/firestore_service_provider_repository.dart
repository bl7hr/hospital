import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testfirebase/profile/service_provider/service_providers/data/service_provider_repository.dart';
import 'package:testfirebase/profile/service_provider/service_providers/domain/service_provider_class.dart';


final firestoreServiceProviderRepositoryProvider=Provider<FirestoreServiceProviderRepository>((ref)=>
    FirestoreServiceProviderRepository());
class FirestoreServiceProviderRepository implements ServiceProviderRepository{
  CollectionReference serviceProviders=FirebaseFirestore.instance.collection('users');
  @override
  Future<ServiceProviderClass> getServiceProvider({required String id}) async{
   return await serviceProviders.doc(id).get().then((DocumentSnapshot doc){
     final  data =doc.data() as Map<String,dynamic>;
     return ServiceProviderClass.fromJson(data).copyWith(id: doc.id);
   }
   ,onError: (e)=>throw e,
   );
  }

  @override
  Future<List<ServiceProviderClass>> getServiceProviders() async {
    return await serviceProviders.get().then(
          (QuerySnapshot doc){
       return doc.docs
           .map((e) => ServiceProviderClass.fromJson(e.data() as Map<String,dynamic>)
           .copyWith(id: e.id))
           .toList();
    }
      ,onError: (e)=>throw e,
    );
  }

  @override
  Future<List<ServiceProviderClass>> searchInServiceProvidersByName({required String name}) {

    throw UnimplementedError();
  }
  
}