import 'package:flutter/material.dart';
import '../../../../../../../core/resource/colors.dart';
import '../../../../../../../core/resource/fonts.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../../../core/resource/strings.dart';
import '../../../service_provider/service_provider_fillter/service_provider_fillter.dart';
import '../../../widgets/appbar_icon.dart';
import '../../../widgets/button.dart';
import '../../../widgets/checkbox.dart';
import '../../../widgets/chip.dart';
import '../../../widgets/text.dart';
import '../../../widgets/text_fild.dart';
import '../../patients/presentation/screens/patients.dart';
import '../components/firstsearch.dart';
import '../components/secondsearch.dart';

class PatientFillter extends StatefulWidget {
  const PatientFillter({Key? key}) : super(key: key);

  @override
  State<PatientFillter> createState() => _serviceProviderFillterState();
}
@override

class _serviceProviderFillterState extends State<PatientFillter> {
  bool homeChecked=false;
  bool onlineChecked=false;
  bool centerChecked=false;
  bool gaziantap=false;
  bool adana=false;
  bool any = false;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorGeneral.background,
        body: Padding(
          padding: const EdgeInsets.all(SizesGeneral.size20),
          child: Column(
            children: [
              appbarIcon((){Navigator.pop(context);}),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height:SizesGeneral.size34,),
                      text(txt: StringsGeneral.titlePatients,size: SizesGeneral.size24,fontWeight: FontsGeneral.bold),
                      text(txt: StringsGeneral.pleaseDetermineYourCriteria,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
                      const SizedBox(height:SizesGeneral.size42,),
                      //first fillter search
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
                                  GestureDetector(
                                    onTap:(){setState((){gaziantap=!gaziantap;adana=false;});},
                                    child:  chip(
                                        clr: gaziantap==true?ColorGeneral.seacrhGrey:ColorGeneral.chipUnselected,
                                        width: SizesGeneral.size100,
                                        height: SizesGeneral.size40,
                                        txt: StringsGeneral.gaziantep),
                                  ),
                                  SizedBox(width: SizesGeneral.size5,),
                                  GestureDetector(
                                    onTap:(){setState((){adana=!adana;gaziantap=false;});},
                                    child: chip(
                                        clr: adana==true?ColorGeneral.seacrhGrey:ColorGeneral.chipUnselected,
                                        width: SizesGeneral.size75,
                                        height: SizesGeneral.size40,
                                        txt: StringsGeneral.adana),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height:SizesGeneral.size10,),
                      //second fillter search
                      Row(
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
                              GestureDetector(
                                onTap: (){setState(() {
                                  any=!any;
                                });},
                                child: chip(
                                    clr: any==true?ColorGeneral.seacrhGrey:ColorGeneral.chipUnselected,
                                    width: SizesGeneral.size75,
                                    height: SizesGeneral.size40,
                                    txt: StringsGeneral.any),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height:SizesGeneral.size28,),
                      //checlbox**********************************
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          text(txt: StringsGeneral.serviceType),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //text box for search
                              chickBox(txt: StringsGeneral.home,checkBox: Checkbox(value: homeChecked, onChanged: (oncheck){
                                setState((){
                                  homeChecked=!homeChecked;
                                });
                              },
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
                                activeColor: ColorGeneral.pink,side: BorderSide(color: ColorGeneral.pink,width: 2),),),
                              const SizedBox(height: SizesGeneral.size10,),
                              chickBox(txt: StringsGeneral.center,checkBox: Checkbox(value: centerChecked, onChanged: (oncheck){
                                setState((){
                                  centerChecked=!centerChecked;
                                });
                              },
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
                                activeColor: ColorGeneral.pink,side: BorderSide(color: ColorGeneral.pink,width: 2),),),
                              const SizedBox(height: SizesGeneral.size10,),
                              chickBox(txt: StringsGeneral.online,checkBox: Checkbox(value: onlineChecked, onChanged: (oncheck){
                                setState((){
                                  onlineChecked=!onlineChecked;
                                });
                              },
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
                                activeColor: ColorGeneral.pink,side: BorderSide(color: ColorGeneral.pink,width: 2),),),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height:SizesGeneral.size28,),
                      //button**********************************
                      defultButton(txt:StringsGeneral.applay,press: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Patients()));}),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }


}
