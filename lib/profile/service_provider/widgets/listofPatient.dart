
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resource/sizes.dart';
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
                return  myListTile(imgeUrl: items[index]["image"], fullName: items[index]["name"],
                    firstIcon:items [index]["inhome"],secondIcon:items [index]["inhospital"],
                    thirdIcon:items [index]["online"]   ,country: items[index]["country"]);

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
        builder: (BuildContext context, WidgetRef ref, Widget? child) =>
         FutureBuilder(future:ref.watch(userProvider).loadList() ,builder: (context,snapshot)
        {
          if (snapshot.hasData) {
            //get the data
            List<UserModel> items = snapshot.data as List<UserModel>;

            return  ListView.separated(separatorBuilder: (BuildContext context, int index)=>Padding(
                padding: const EdgeInsets.only(right: 15,left: 65),
                child:SizedBox(height: SizesGeneral.size30,)
            ),itemCount: items.length,
                itemBuilder: (context,index){
                  return  myListTile(imgeUrl: items[index].image, fullName: items[index].name,
                      firstIcon:items [index].inhome,secondIcon:items [index].inhospital,
                      thirdIcon:items [index].online   ,country: items[index].country);

                }); }
          if(snapshot.hasError)
            return Text('error');
          else
            return Text('lodding');
        }
          ,),
      ),
    ),
  );
}*/
