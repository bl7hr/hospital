import 'package:flutter/material.dart';
import 'package:testfirebase/profile/widgets/button.dart';
import '../../../../../../../../core/resource/sizes.dart';
import '../../../../../../../../core/resource/strings.dart';
import '../../../../components/user_components/review.dart';
import '../../../../widgets/appbar_icon.dart';
import '../../../../widgets/sub_titles_profile.dart';
import '../components/info_component.dart';
import '../components/patient/diseases_list.dart';
import '../components/patient/first_row.dart';
import '../components/patient/name_anguage_icons_component.dart';

class Patient extends StatelessWidget {
  const Patient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size getsize() {
      return MediaQuery.of(context).size;
    }

    var width = getsize().width / 390;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(SizesGeneral.size20),
                  child: appbarIcon(() {
                    Navigator.pop(context);
                  }),
                ),
                const SizedBox(
                  height: SizesGeneral.size12,
                ),
                FirstRowP(),
                NameLanguageIconsComponentP(),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subTitlesProfile(StringsGeneral.info),
                  InfoComponentP(),
                  subTitlesProfile(StringsGeneral.diseases),
                  DiseasesList(),
                  const SizedBox(
                    height: SizesGeneral.size7,
                  ),

                  ///button ========> convert it as class component
                  Center(
                      child: defultButton(
                          press: () {},
                          width: SizesGeneral.size350 * 0.92,
                          txt: StringsGeneral.contact)),
                  subTitlesProfile(StringsGeneral.reviews),

                  ///reveiws ====> check it later for build
                  Review(),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
