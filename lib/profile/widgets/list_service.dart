import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:testfirebase/profile/service_provider/service_providers/domain/service_provider_class.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/screens/service_provider.dart';
import '../../../../../core/resource/sizes.dart';
import '../service_provider/service_providers/data/firestore_service_provider_repository.dart';
import 'myList.dart';

CollectionReference getServiceProviders =
    FirebaseFirestore.instance.collection('users');

final selectedUserProv = StateProvider<ServiceProviderClass?>((ref) => null);

Widget listViewService() {
  return Container(
    child: Expanded(
      child: FutureBuilder(
        future: getServiceProviders.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            QuerySnapshot? querySnapshot = snapshot.data;
            List<QueryDocumentSnapshot> documents = querySnapshot!.docs;
            List<Map> items = documents.map((e) => e.data() as Map).toList();
            return ListView.separated(
                separatorBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(right: 15, left: 65),
                    child: SizedBox(
                      height: SizesGeneral.size30,
                    )),
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return Consumer(
                    builder:
                        (BuildContext context, WidgetRef ref, Widget? child) =>
                            InkWell(
                      onTap: () {
                        final ServiceProviderClass serviceProviderClass =
                            ServiceProviderClass(
                                name: items[index]["name"],
                                country: items[index]["country"],
                                stars: items[index]["stars"],
                                inhome: items[index]["inhome"],
                                inhospital: items[index]["inhospital"],
                                online: items[index]["online"],
                                image: items[index]["image"],
                                subcountry: items[index]["subcountry"],
                                session: items[index]["session"],
                                patients: items[index]["patients"],
                                documantation: items[index]["documantation"],
                                lang: items[index]["lang"],
                                specialties: items[index]["specialties"],
                                discription: items[index]["discription"],
                                price: items[index]["price"]);
                        ref.read(selectedUserProv.notifier).state =
                            serviceProviderClass;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServiceProvider()));
                      },
                      child: myListTile(
                          imgeUrl: items[index]["image"],
                          fullName: items[index]["name"],
                          firstIcon: items[index]["inhome"],
                          secondIcon: items[index]["inhospital"],
                          thirdIcon: items[index]["online"],
                          country: items[index]["country"],
                          stars: items[index]['stars']),
                    ),
                  );
                });
          }
          if (snapshot.hasError)
            return Text('error');
          else
            return CircularProgressIndicator();
        },
      ),
    ),
  );
}
