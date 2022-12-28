import 'package:flutter/material.dart';

import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/sizes.dart';
import '../../../service_provider/widgets/text.dart';


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