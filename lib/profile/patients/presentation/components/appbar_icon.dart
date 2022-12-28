import 'package:flutter/material.dart';

import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/sizes.dart';




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



//button************************************button

