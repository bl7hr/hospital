import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../core/resource/colors.dart';
import '../../../core/resource/fonts.dart';
import '../../../core/resource/icons.dart';
import '../../../core/resource/sizes.dart';
import '../../../core/resource/strings.dart';





Widget text({
  required String txt,
  double size=SizesGeneral.size20,
  FontWeight fontWeight=FontsGeneral.normal,
  Color clr=ColorGeneral.black,
  TextOverflow textOverflow=TextOverflow.visible,

})=>Text('$txt',style:TextStyle(fontWeight: fontWeight,fontSize: size,color: clr,overflow: textOverflow) ,);
List chipColor=[true,false,false];