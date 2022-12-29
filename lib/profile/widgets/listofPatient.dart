
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testfirebase/profile/patients/patients/data/models/patient_model.dart';
import 'package:testfirebase/profile/patients/patients/presentation/controller/user_event.dart';
import '../../../../../core/resource/sizes.dart';
import '../patients/patients/presentation/controller/patientprovider.dart';
import '../patients/patients/presentation/screens/patient.dart';
import 'myList.dart';

getData()async{
  CollectionReference users= FirebaseFirestore.instance.collection('patient');
  QuerySnapshot querySnapshot=  await users.get();
  List<QueryDocumentSnapshot> listDocs=  querySnapshot.docs;
  listDocs.forEach((element) {
    print(element.data());
  });

}
CollectionReference users= FirebaseFirestore.instance.collection('patient');
late Stream<QuerySnapshot> _stream;


Widget listViewPatient(){
  return Container(
    child: Expanded(
      child: FutureBuilder(future:users.get() ,builder: (context, snapshot)
      {
        if (snapshot.hasData) {
          //get the data
          QuerySnapshot? querySnapshot = snapshot.data;
          List<QueryDocumentSnapshot> documents = querySnapshot!.docs;
          //Convert the documents to Maps
          List<Map> items = documents.map((e) => e.data() as Map).toList();
          return  ListView.separated(separatorBuilder: (BuildContext context, int index)=>Padding(
              padding: const EdgeInsets.only(right: 15,left: 65),
              child:SizedBox(height: SizesGeneral.size30,)
          ),itemCount: snapshot.data!.docs.length,
              itemBuilder: (context,index){
                return  InkWell(onTap: (){Provider.of<Patientprovider>( context,listen: false)
                    .addMyNote(items[index]["name"],items[index]["country"],items[index]["stars"],items[index]["inhome"]
                    ,items[index]["inhospital"],items[index]["online"],items[index]["image"],items[index]["Diseases"]
                    ,items[index]["GroupSession"],items[index]["IndividualSession"],items[index]["lang"],items[index]["subcountry"]);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Patient()));
                  },
                  child: myListTile(imgeUrl: items[index]["image"], fullName: items[index]["name"],
                      firstIcon:items [index]["inhome"],secondIcon:items [index]["inhospital"],
                      thirdIcon:items [index]["online"]   ,country: items[index]["country"],stars: items[index]['stars']),
                );

              }); }
        if(snapshot.hasError)
          return Text('error');
        else
          return CircularProgressIndicator();
      }
        ,),
    ),
  );
}

/*

Widget listViewPatient(){
  return Container(
    child: Expanded(
      child: Consumer(
        builder: (context, value, child) =>
        FutureBuilder(future:value.watch(patientProvider).loadList() ,builder: (context, snapshot)
        {
          if (snapshot.hasData) {
            List<PatientModel> items = snapshot.data as List<PatientModel>;
            return  ListView.separated(separatorBuilder: (BuildContext context, int index)=>Padding(
                padding: const EdgeInsets.only(right: 15,left: 65),
                child:SizedBox(height: SizesGeneral.size30,)
            ),itemCount: items.length,
                itemBuilder: (context,index){
                  return  InkWell(onTap: (){
                    */
/*value.read(patientProvider).createPatient(items[index].name, items[index].country, items[index].stars,
                        items[index].inhome, items[index].inhospital, items[index].online,
                        items[index].image, items[index].diseases, items[index].groupSession, items[index].IndividualSession,
                        items[index].lang, items[index].subcountry);
                    

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Patient()));*//*

                  },
                    child: myListTile(imgeUrl: items[index].image, fullName: items[index].name,
                        firstIcon:items [index].inhome,secondIcon:items [index].inhospital,
                        thirdIcon:items [index].online  ,country: items[index].country),
                  );

                }); }
          if(snapshot.hasError)
            return Text('error');
          else
            return CircularProgressIndicator();
        }
          ,),
      ),
    ),
  );
}
*/

