import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';
import '../../../../core/resource/icons.dart';
import '../../../../core/resource/sizes.dart';
import '../../../../core/resource/strings.dart';



Widget textFild({
  double height=SizesGeneral.size40,
  double width=SizesGeneral.size218,
  var controller,
  var onChange
}){
  return SizedBox(
    height: height,
    width: width,

    child: TextField(
      onChanged: onChange,
      controller: controller,
      decoration: InputDecoration(
        fillColor: ColorGeneral.seacrhGrey,
        filled: true,
        labelText: StringsGeneral.search ,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
        suffixIcon: Icon (IconGeneral.search,color: ColorGeneral.black,),
        //   contentPadding: EdgeInsets.all(4),
      ),),
  );
}