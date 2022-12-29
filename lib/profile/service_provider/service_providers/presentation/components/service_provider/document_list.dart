import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/resource/sizes.dart';
import '../../../../../widgets/chip.dart';
import '../../controller/service_provider_cont.dart';

Widget documantList()=>SizedBox( height: SizesGeneral.size50,
  child: Consumer<ServiceProvidersProvider>(
    builder: (BuildContext context, value, Widget? child) {
      return
        Padding(
          padding: const EdgeInsets.only(left: SizesGeneral.size20),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder:  (context,index){
                return chip(txt: value.getMyNotes.last.documantation[index]);
              },
              separatorBuilder:(BuildContext context, int index)=>const SizedBox(width: SizesGeneral.size12,),
              itemCount: value.getMyNotes.last.documantation.length),
        );

    },
  ),
);
