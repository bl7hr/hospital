import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testfirebase/profile/service_provider/service_provider_fillter/service_provider_fillter.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/controller/service_provider_cont.dart';
import 'package:testfirebase/profile/widgets/chip.dart';
import 'package:testfirebase/profile/widgets/list_service.dart';
import 'package:testfirebase/profile/widgets/text.dart';
import 'package:testfirebase/profile/widgets/text_fild.dart';
import '../../../../../../../core/resource/colors.dart';
import '../../../../../../../core/resource/fonts.dart';
import '../../../../../../../core/resource/icons.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../../../core/resource/strings.dart';
import '../../../../widgets/icon_filtter.dart';




class ServiceProviders extends StatefulWidget {
  const ServiceProviders({Key? key}) : super(key: key);

  @override
  State<ServiceProviders> createState() => _ServiceProvidersState();
}
bool any=false;
bool sport=false;
bool orthop=false;
class _ServiceProvidersState extends State<ServiceProviders> {
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
            chip(txt: StringsGeneral.any,width: SizesGeneral.size80,onpress: (){setState(() {
              any=!any;sport=false;
              orthop=false;
            });},clr:any==true? ColorGeneral.seacrhGrey:ColorGeneral.chipUnselected),
            const SizedBox(width: SizesGeneral.size9,),
            chip(txt: StringsGeneral.sports,onpress: (){setState(() {
               sport=!sport;any=false;
                orthop=false;
                });},clr: sport==true? ColorGeneral.seacrhGrey:ColorGeneral.chipUnselected),
            const SizedBox(width: SizesGeneral.size9,),
            chip(txt: StringsGeneral.orthopedics,onpress: (){setState(() {
        orthop=!orthop;sport=false;
        any=false;
                   });},clr: orthop==true? ColorGeneral.seacrhGrey:ColorGeneral.chipUnselected),
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
