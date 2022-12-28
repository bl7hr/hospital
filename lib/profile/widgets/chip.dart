import 'package:flutter/material.dart';
import 'package:testfirebase/profile/widgets/text.dart';
import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/fonts.dart';
import '../../../../../core/resource/icons.dart';
import '../../../../../core/resource/sizes.dart';
import '../../../../../core/resource/strings.dart';




Widget chip({
  double height=SizesGeneral.size50,
  double width=SizesGeneral.size150,
  required String txt,
  Color clr =ColorGeneral.chipUnselected,
  var onpress,
})=>Container(
  height: height,
  width: width,

  decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size50),color: clr,
      border: Border.all(color: ColorGeneral.black)
  ),
  child: MaterialButton(onPressed: onpress,
    child: text(txt: txt,size: SizesGeneral.size14),),
);