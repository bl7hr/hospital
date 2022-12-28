import 'package:flutter/material.dart';
import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/sizes.dart';

Widget iconFillter({var onprss}){
  return Padding(
    padding: const EdgeInsets.all(SizesGeneral.size8),
    child: InkWell(
      onTap: onprss,
      child: Container(
        width: SizesGeneral.size56,
        height: SizesGeneral.size56,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size15,),
            color: ColorGeneral.backgContinerIcon),
        child:Padding(
          padding: const EdgeInsets.all(SizesGeneral.size18),
          child: Image(image: AssetImage("assets/icons/list.png"),),
        ),
      ),
    ),
  );
}