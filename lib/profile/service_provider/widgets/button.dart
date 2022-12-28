import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';
import '../../../../core/resource/icons.dart';
import '../../../../core/resource/sizes.dart';
import '../../../../core/resource/strings.dart';
import '../../patients/presentation/screens/components/text.dart';






Widget  defultButton({required String txt, double width=SizesGeneral.size250,var press,}){
  return Container(
    width: width,
    height: SizesGeneral.size50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size15),color: ColorGeneral.buttonBlue),
    child: MaterialButton(
        onPressed: press,
        child: text(txt: txt,clr: ColorGeneral.white,size: SizesGeneral.size16)
    ),
  );
}