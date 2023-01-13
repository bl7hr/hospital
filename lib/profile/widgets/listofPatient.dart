import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/resource/sizes.dart';
import '../patients/patients/domain/patient_class.dart';
import '../patients/patients/presentation/screens/patient.dart';
import 'myList.dart';

CollectionReference getPatients =
    FirebaseFirestore.instance.collection('patient');

final selectedPatientProv = StateProvider<PatientClass?>((ref) => null);

Widget listViewPatient() {
  return Container(
    child: Expanded(
      child: FutureBuilder(
        future: getPatients.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //get the data
            QuerySnapshot? querySnapshot = snapshot.data;
            List<QueryDocumentSnapshot> documents = querySnapshot!.docs;
            //Convert the documents to Maps
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
                            final PatientClass serviceProviderClass =
                            PatientClass(
                                name: items[index]["name"],
                                country: items[index]["country"],
                                stars: items[index]["stars"],
                                inhome: items[index]["inhome"],
                                inhospital: items[index]["inhospital"],
                                online: items[index]["online"],
                                image: items[index]["image"],
                                subcountry: items[index]["subcountry"],
                                session: items[index]["GroupSession"],
                                lang: items[index]["lang"],
                              individualSession: items[index]["IndividualSession"],
                              diseases: items[index]["Diseases"],
                               );
                            ref.read(selectedPatientProv.notifier).state =
                                serviceProviderClass;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Patient()));
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
