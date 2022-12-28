import 'package:flutter/cupertino.dart';
import 'package:testfirebase/core/resource/colors.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../../../core/resource/strings.dart';
import '../../../components/chip.dart';
import '../../../components/text.dart';
import '../../../components/text_fild.dart';
bool selected=false;
Widget secondSearch(){

  return  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      text(txt: StringsGeneral.district),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //text box for search
          textFild(),
          SizedBox(height: SizesGeneral.size8,),
          chip(
            onpress: (){selected=!selected;},
            clr: selected==false?ColorGeneral.seacrhGrey:ColorGeneral.chipUnselected,
              width: SizesGeneral.size75,
              height: SizesGeneral.size40,
              txt: StringsGeneral.any)
        ],
      ),
    ],
  );
}