
import 'package:flutter/cupertino.dart';
import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';
import '../../../../core/resource/icons.dart';
import '../../../../core/resource/sizes.dart';
import '../../../../core/resource/strings.dart';



Widget blueIcon(String path){
  return Container(
    width: SizesGeneral.size50,
    height: SizesGeneral.size50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizesGeneral.size15),color: ColorGeneral.containerIcon),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(image: AssetImage(path),),
    ),
  );
}
