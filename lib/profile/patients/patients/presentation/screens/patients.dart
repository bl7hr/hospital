import 'package:flutter/material.dart';
import 'package:testfirebase/profile/widgets/icon_filtter.dart';
import '../../../../../../../../core/resource/colors.dart';
import '../../../../../../../../core/resource/fonts.dart';
import '../../../../../../../../core/resource/sizes.dart';
import '../../../../../../../../core/resource/strings.dart';
import '../../../../widgets/chip.dart';
import '../../../../widgets/listofPatient.dart';
import '../../../../widgets/text.dart';
import '../../../../widgets/text_fild.dart';
import '../../../patient_fillter/screens/patient_fillter.dart';


class Patients extends StatefulWidget {
  const Patients({Key? key}) : super(key: key);

  @override
  State<Patients> createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  bool any=false;
  bool sport=false;
  bool orthop=false;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width/390;
    return SafeArea(child: Scaffold(backgroundColor: ColorGeneral.background,

        body: Column(
            children: [
              const SizedBox(height:SizesGeneral.size54,),
              text(txt: StringsGeneral.titlePatients,size: SizesGeneral.size24,fontWeight: FontsGeneral.bold),
              text(txt: StringsGeneral.pleaseTypeOrDetermineYourCriteria,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
              const SizedBox(height:SizesGeneral.size5,),
              Row(children: [
                const SizedBox(width: SizesGeneral.size20,),

                textFild(
                    height: SizesGeneral.size56*width,
                    width: SizesGeneral.size286*width
                ),
                iconFillter(onprss: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientFillter()));} ),
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
              listViewPatient(),
            ]
        )
    )
    );
  }
}
