import 'package:flutter/material.dart';
import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';
import '../../../../core/resource/sizes.dart';
import '../widgets/text.dart';





Widget containerProfile(String firstLine,String lastLine){
  return Container(
    width: SizesGeneral.size153,
    height: SizesGeneral.size75,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size15),color: ColorGeneral.containerIcon),
    child: Padding(
      padding: const EdgeInsets.all(SizesGeneral.size9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text(txt: firstLine,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
          text(txt: lastLine,size: SizesGeneral.size16,fontWeight: FontsGeneral.w700)
        ],
      ),
    ),
  );
}