
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:testfirebase/profile/widgets/review.dart';
CollectionReference users= FirebaseFirestore.instance.collection('users');

Widget reviewList(double width){
  return FutureBuilder(future:users.get() ,builder: (context,snapshot)
{
  if (snapshot.hasData) {
  //get the data
  QuerySnapshot? querySnapshot = snapshot.data;
  List<QueryDocumentSnapshot> documents = querySnapshot!.docs;

  //Convert the documents to Maps
  List<Map> items = documents.map((e) => e.data() as Map).toList();
  return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context,index){

  return reveiw(
    items[index]['name'], items[index]['country'], 'items[index][]', 'items[index][]',width,
  );


});
  }
  else return CircularProgressIndicator();
});}