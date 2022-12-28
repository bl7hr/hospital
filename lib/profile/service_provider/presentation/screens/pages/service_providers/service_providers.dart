import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/resource/colors.dart';
import '../../../../../../core/resource/fonts.dart';
import '../../../../../../core/resource/icons.dart';
import '../../../../../../core/resource/sizes.dart';
import '../../../../../../core/resource/strings.dart';
import '../../../../../patients/presentation/model/models.dart';
import '../../../../../patients/presentation/screens/components/text_fild.dart';
import '../../../../../patients/presentation/screens/components/chip.dart';
import '../../../../../patients/presentation/screens/components/text.dart';
import '../../../../widgets/icon_filtter.dart';
import '../../../../widgets/list_service.dart';
import '../service_provider_fillter/service_provider_fillter.dart';




class ServiceProviders extends StatelessWidget {
  const ServiceProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width/390;
    return SafeArea(child: Scaffold(backgroundColor: ColorGeneral.background,

    body: Column(
    children: [
    const SizedBox(height:SizesGeneral.size54,),
    text(txt: StringsGeneral.titleService,size: SizesGeneral.size24,fontWeight: FontsGeneral.bold),
    text(txt: StringsGeneral.pleaseDetermineYourCriteria,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
    const SizedBox(height:SizesGeneral.size5,),
      Row(children: [
        const SizedBox(width: SizesGeneral.size20,),
        textFild(
            height: SizesGeneral.size56*width,
            width: SizesGeneral.size286*width
        ),
        iconFillter(onprss: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceProviderFillter()));}),
      ],
      ),
      const SizedBox(height: SizesGeneral.size8,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: SizesGeneral.size20,),
            chip(txt: StringsGeneral.any,width: SizesGeneral.size80,onpress: (){},clr: ColorGeneral.seacrhGrey),
            const SizedBox(width: SizesGeneral.size9,),
            chip(txt: StringsGeneral.sports,),
            const SizedBox(width: SizesGeneral.size9,),
            chip(txt: StringsGeneral.orthopedics,),
          ],
        ),
      ),
      const SizedBox(height: SizesGeneral.size37,),
      listViewService(),
      ]
    )
    )
    );
  }
}

