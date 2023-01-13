 import 'package:flutter/material.dart';
import '../../core/resource/colors.dart';
import '../../core/resource/fonts.dart';
import '../../core/resource/sizes.dart';
import '../widgets/text.dart';

class GeneralTitle extends StatelessWidget {
   const GeneralTitle({Key? key, required this.mainTitle, required this.subTitle}) : super(key: key);
 final String mainTitle;
 final String subTitle;
   @override
   Widget build(BuildContext context) {
     return  Column(
       children: [
         text(
             txt: mainTitle,
             size: SizesGeneral.size24,
             fontWeight: FontsGeneral.bold),
         text(
             txt: subTitle,
             size: SizesGeneral.size14,
             clr: ColorGeneral.textGrey),
       ],
     );
   }
 }
