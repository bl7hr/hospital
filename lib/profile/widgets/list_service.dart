


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/fonts.dart';
import '../../../../../core/resource/icons.dart';
import '../../../../../core/resource/sizes.dart';
import '../../../../../core/resource/strings.dart';
import 'myList.dart';




getData()async{
  CollectionReference users= FirebaseFirestore.instance.collection('users');
  QuerySnapshot querySnapshot=  await users.get();
  List<QueryDocumentSnapshot> listDocs=  querySnapshot.docs;
  listDocs.forEach((element) {
    print(element.data());
  });

}
final getUser =FutureProvider<QuerySnapshot>((ref) =>users.get() );
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
          return  myListTile(imgeUrl: items[index]["image"], fullName: items[index]["name"],
                firstIcon:items [index]["inhome"],secondIcon:items [index]["inhospital"],
              thirdIcon:items [index]["online"]   ,country: items[index]["country"]);

          }); }
        if(snapshot.hasError)
            return Text('error');
          else
            return Text('lodding');
        }
        ,),
    ),
  );
}
