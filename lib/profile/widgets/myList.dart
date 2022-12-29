

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testfirebase/profile/widgets/text.dart';
import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/fonts.dart';
import '../../../../../core/resource/icons.dart';
import '../../../../../core/resource/sizes.dart';
import '../../../../../core/resource/strings.dart';
import '../patients/patients/presentation/controller/patientprovider.dart';
import '../patients/patients/presentation/screens/patient.dart';


Widget myListTile({required String imgeUrl,required String fullName,required String country,required int stars,
  required bool firstIcon,required bool secondIcon,required bool thirdIcon }) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // const SizedBox(width: SizesGeneral.size37,),
      Container(
          width: SizesGeneral.size120,
          height:SizesGeneral.size120 ,
          child:  Image.network(imgeUrl)),
      Container(
        width: SizesGeneral.size160,
        height: SizesGeneral.size100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            text(txt:fullName,size: SizesGeneral.size20,fontWeight: FontsGeneral.w400),
            text(txt:country,size: SizesGeneral.size14,fontWeight: FontsGeneral.w400,clr: ColorGeneral.textGrey),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(width: SizesGeneral.size40,),
               firstIcon==true? Container(width:23,height:22,child: Image(image: AssetImage(IconGeneral.home))):Container(),
                const SizedBox(width: SizesGeneral.size8,),
                secondIcon ==true? Container(width:18,height:23,child: Image(image: AssetImage(IconGeneral.hospital))):Container(),
                const SizedBox(width: SizesGeneral.size8,),
                thirdIcon ==true?Container(width:19,height:19,child: Image(image: AssetImage(IconGeneral.action))):Container(),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(IconGeneral.star,size: SizesGeneral.size10,color:stars>=1? ColorGeneral.buttonBlue:ColorGeneral.iconGrey,),
                Icon(IconGeneral.star,size: SizesGeneral.size10,color:stars>=2 ? ColorGeneral.buttonBlue:ColorGeneral.iconGrey,),
                Icon(IconGeneral.star,size: SizesGeneral.size10,color:stars>= 3? ColorGeneral.buttonBlue:ColorGeneral.iconGrey,),
                Icon(IconGeneral.star,size: SizesGeneral.size10,color:stars>= 4? ColorGeneral.buttonBlue:ColorGeneral.iconGrey),
                Icon(IconGeneral.star,size: SizesGeneral.size10,color:stars>= 5? ColorGeneral.buttonBlue:ColorGeneral.iconGrey)
              ],
            ),
            text(txt: StringsGeneral.seemore,clr: ColorGeneral.pink,size: SizesGeneral.size10)
          ],
        ),
      )
    ],
  );
}
