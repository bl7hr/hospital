import 'package:flutter/material.dart';
import '../../../../../../core/resource/colors.dart';
import '../../../../../../core/resource/fonts.dart';
import '../../../../../../core/resource/icons.dart';
import '../../../../../../core/resource/sizes.dart';
import '../../../../../../core/resource/strings.dart';
import '../../../../../patients/presentation/screens/components/chip.dart';
import '../../../../../patients/presentation/screens/components/text.dart';
import '../../../../widgets/appbar_icon.dart';
import '../../../../widgets/blue_icon.dart';
import '../../../../widgets/button.dart';
import '../../../../components/container_profile.dart';
import '../../../../widgets/review.dart';
import '../../../../widgets/sub_titles_profile.dart';




class ServiceProvider extends StatefulWidget {

  const ServiceProvider({Key? key}) : super(key: key);

  @override
  State<ServiceProvider> createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
  @override
  Size getsize(){
    return MediaQuery.of(context).size;
  }

  Widget build(BuildContext context) {
    var width=getsize().width/390;
    return SafeArea(child:
    Scaffold
      (
      body: Column(
        children: [
          Container(
            child: Column (

              children: [
                Padding(
                  padding: const EdgeInsets.all(SizesGeneral.size20),
                  child: appbarIcon((){Navigator.pop(context);}),
                ),
                const SizedBox(height:SizesGeneral.size12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(width: SizesGeneral.size5,),
                    text(txt: '5.0',size: 15),
                    Icon(IconGeneral.star,color: ColorGeneral.pink,size: SizesGeneral.size16,),
                 Center(child: Container(width:SizesGeneral.size125,height:SizesGeneral.size125,child: Image(image: AssetImage(StringsGeneral.mecheal))))
                    ,Icon(IconGeneral.location,color: ColorGeneral.pink,size: SizesGeneral.size18,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: SizesGeneral.size16,),
                        text(txt: StringsGeneral.gaziantep,size: SizesGeneral.size16),
                        text(txt: StringsGeneral.sahinbey,size: SizesGeneral.size14,clr: ColorGeneral.textGrey),
                      ],
                    )
                  ],
                ),
                SizedBox(height: SizesGeneral.size11,),
                text(txt: StringsGeneral.michaelKnight,size:SizesGeneral.size24,fontWeight: FontsGeneral.w700 ),
                text(txt: StringsGeneral.englishArabic,size:SizesGeneral.size14 ,clr: ColorGeneral.textGrey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    blueIcon(IconGeneral.blueHome),
                    SizedBox(width: SizesGeneral.size20,),
                    blueIcon(IconGeneral.blueHospital),
                    SizedBox(width: SizesGeneral.size20,),
                    blueIcon(IconGeneral.blueAction),
                  ],
                ),
              ],
            ),
          ),
         const SizedBox(height: SizesGeneral.size3,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subTitlesProfile(StringsGeneral.info),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: SizesGeneral.size20,),
                        containerProfile(StringsGeneral.price, StringsGeneral.from50to20),
                       const SizedBox(width: SizesGeneral.size17,),
                        containerProfile(StringsGeneral.patients, StringsGeneral.plussFiveHan),
                        const SizedBox(width: SizesGeneral.size17,),
                        containerProfile(StringsGeneral.session, StringsGeneral.twenty),
                      ],
                    ),
                  ),
                  subTitlesProfile(StringsGeneral.biography),
                  Padding(
                    padding: const EdgeInsets.only(left: SizesGeneral.size20),
                    child: Container(
                        width:340*width,child: text(txt: StringsGeneral.discriptionBiography,size: SizesGeneral.size16)),
                  ),
                  subTitlesProfile(StringsGeneral.specialties),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: SizesGeneral.size20,),
                        chip(txt: StringsGeneral.sports),
                        const SizedBox(width: SizesGeneral.size12,),
                        chip(txt: StringsGeneral.orthopedics),
                        const SizedBox(width: SizesGeneral.size12,),
                        chip(txt: StringsGeneral.orthopedics),
                      ],
                    ),
                  ),
                  subTitlesProfile(StringsGeneral.documantation),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: SizesGeneral.size20,),
                        chip(txt: StringsGeneral.diploma),
                        const SizedBox(width: SizesGeneral.size12,),
                        chip(txt: StringsGeneral.cv),
                        const SizedBox(width: SizesGeneral.size12,),
                        chip(txt: StringsGeneral.diploma),
                      ],
                    ),
                  ),
                  const SizedBox(height: SizesGeneral.size7,),
                  Center(child: defultButton(press:(){print(getsize().width);},width:SizesGeneral.size350*0.92,txt: StringsGeneral.makeAppointment))
                  ,subTitlesProfile(StringsGeneral.reviews),
                  reveiw(StringsGeneral.tonyDanza,StringsGeneral.firstReview,StringsGeneral.secomdimgReview,getsize().width),

                  reveiw(StringsGeneral.nameSurname,StringsGeneral.secondReview,StringsGeneral.firstimgReview,getsize().width)
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }


}
