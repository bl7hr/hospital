import 'package:flutter/material.dart';
import 'package:testfirebase/profile/widgets/icon_filtter.dart';
import '../../../../../../../../core/resource/colors.dart';
import '../../../../../../../../core/resource/sizes.dart';
import '../../../../../../../../core/resource/strings.dart';
import '../../../../components/title.dart';
import '../../../../components/users_components/chips_search_component.dart';
import '../../../../widgets/listofPatient.dart';
import '../../../../widgets/text_fild.dart';
import '../../../patient_fillter/screens/patient_fillter.dart';


class Patients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 390;
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorGeneral.background,
            body: Column(children: [
              const SizedBox(
                height: SizesGeneral.size54,
              ),
              GeneralTitle(
                mainTitle: StringsGeneral.titlePatients,
                subTitle: StringsGeneral.pleaseTypeOrDetermineYourCriteria,
              ),
              const SizedBox(
                height: SizesGeneral.size5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: SizesGeneral.size20,
                  ),
                  textFild(
                      height: SizesGeneral.size56 * width,
                      width: SizesGeneral.size286 * width),
                  iconFillter(onprss: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PatientFillter()));
                  }),
                ],
              ),
              const SizedBox(
                height: SizesGeneral.size8,
              ),
              //التأكد من صحة تشاركها مع صفحتين
              ChipsSearchComponent(),
              const SizedBox(
                height: SizesGeneral.size37,
              ),
              listViewPatient(),
            ])));
  }
}
