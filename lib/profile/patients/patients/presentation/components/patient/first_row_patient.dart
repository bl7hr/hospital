
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/resource/colors.dart';
import '../../../../../../core/resource/icons.dart';
import '../../../../../../core/resource/sizes.dart';
import '../../../../../widgets/text.dart';
import '../../controller/patientprovider.dart';

Widget firstRowPatient()=>Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    const SizedBox(width: SizesGeneral.size5,),
    Consumer<Patientprovider>(builder: (BuildContext context, ref, Widget? child){
      return   text(txt: '${ref.getMyNotes.last.stars}.0', size: SizesGeneral.size15);}),
    Icon(IconGeneral.star, color: ColorGeneral.pink,
      size: SizesGeneral.size16,),
    Center(child: Container(width: SizesGeneral.size125,
        height: SizesGeneral.size125,
        child:  Consumer<Patientprovider>(
          builder: ( context,  ref,  child) {
            return CircleAvatar(
              radius: SizesGeneral.size62_5,
              backgroundImage: NetworkImage(
                  ref.getMyNotes.last.image
              ),
            );
          },
        )),
    )
    , Icon(IconGeneral.location, color: ColorGeneral.pink,
      size: SizesGeneral.size18,),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: SizesGeneral.size16,),
        Consumer<Patientprovider>(builder: (BuildContext context, ref, Widget? child){
          return   text(txt: '${ref.getMyNotes.last.country}', size: SizesGeneral.size16);}),
        Consumer<Patientprovider>(builder: (BuildContext context, ref, Widget? child){
          return   text(txt: '${ref.getMyNotes.last.subcountry}', size: SizesGeneral.size16
              ,clr: ColorGeneral.textGrey);}),
      ],
    )
  ],
);