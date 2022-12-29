import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/resource/sizes.dart';
import '../../../../../widgets/chip.dart';
import '../../controller/patientprovider.dart';

Widget diseasesList()=>SizedBox( height: SizesGeneral.size50,
  child: Consumer<Patientprovider>(
    builder: (BuildContext context, value, Widget? child) {
      return
        Padding(
          padding: const EdgeInsets.only(left: SizesGeneral.size20),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder:  (context,index){
                return chip(txt: value.getMyNotes.last.diseases[index]);
              },
              separatorBuilder:(BuildContext context, int index)=>const SizedBox(width: SizesGeneral.size12,),
              itemCount: value.getMyNotes.last.diseases.length),
        );

    },
  ),
);