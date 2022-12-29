
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/screens/service_provider.dart';
import '../../../../../core/resource/sizes.dart';
import '../service_provider/service_providers/presentation/controller/service_provider_cont.dart';
import 'myList.dart';



getData()async{
  CollectionReference users= FirebaseFirestore.instance.collection('users');
  QuerySnapshot querySnapshot=  await users.get();
  List<QueryDocumentSnapshot> listDocs=  querySnapshot.docs;
  listDocs.forEach((element) {
    print(element.data());
  });
}
CollectionReference users= FirebaseFirestore.instance.collection('users');
late Stream<QuerySnapshot> _stream;
Widget listViewService(){
  return Container(
    child: Expanded(
      child: FutureBuilder(future:users.get() ,builder: (context,snapshot)
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
          return  InkWell(  onTap: (){

            Provider.of<ServiceProvidersProvider>( context,listen: false)
              .addMyNote(
              items[index]["name"],items[index]["country"],items[index]["stars"],items[index]["inhome"]
              ,items[index]["inhospital"],items[index]["online"],items[index]["image"],items[index]["subcountry"],items[index]["session"]
              ,items[index]["patients"],items[index]["price"],items[index]["documantation"],items[index]["lang"],
              items[index]["specialties"],items[index]["discription"], );

          Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceProvider()));
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
