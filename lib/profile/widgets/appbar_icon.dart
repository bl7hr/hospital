import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';
import '../../../../core/resource/icons.dart';
import '../../../../core/resource/sizes.dart';
import '../../../../core/resource/strings.dart';


Widget appbarIcon(var onPress){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size10),
            color: ColorGeneral.containerIcon,),
          width: SizesGeneral.size50,
          height: SizesGeneral.size50,
          child: MaterialButton(onPressed: onPress,
              child: Icon(Icons.arrow_back_ios,color: ColorGeneral.black,))),
    ],
  );
}




