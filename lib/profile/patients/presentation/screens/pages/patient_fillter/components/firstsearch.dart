import 'package:flutter/cupertino.dart';
import 'package:testfirebase/core/resource/colors.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../../../core/resource/strings.dart';
import '../../../components/chip.dart';
import '../../../components/text.dart';
import '../../../components/text_fild.dart';
bool a=true;

Widget firstsearch(var on,Color clr){
  return
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text(txt: StringsGeneral.city),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textFild(),
            SizedBox(height: SizesGeneral.size10,),
            Row(
              children: [
                chip(
                  onpress: on,
                    clr: clr,
                    width: SizesGeneral.size100,
                    height: SizesGeneral.size40,
                    txt: StringsGeneral.gaziantep),
                SizedBox(width: SizesGeneral.size5,),
                chip(
                    width: SizesGeneral.size75,
                    height: SizesGeneral.size40,
                    txt: StringsGeneral.adana),
              ],
            )
          ],
        ),
      ],
    );
}