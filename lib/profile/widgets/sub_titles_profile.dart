import 'package:flutter/material.dart';
import 'package:testfirebase/profile/widgets/text.dart';
import '../../../../../core/resource/fonts.dart';
import '../../../../../core/resource/sizes.dart';

Widget subTitlesProfile(String txt){
  return Row
    (
    children: [
      Padding(
        padding: const EdgeInsets.only(left: SizesGeneral.size20,top: SizesGeneral.size7,bottom: SizesGeneral.size7),
        child: text(txt: txt,fontWeight: FontsGeneral.w700,size: SizesGeneral.size24),
      ),
    ],
  );
}