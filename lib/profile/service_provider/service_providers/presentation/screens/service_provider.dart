import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../../../core/resource/sizes.dart';
import '../../../../../../../../core/resource/strings.dart';
import '../../../../components/user_components/review.dart';
import '../../../../widgets/appbar_icon.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/sub_titles_profile.dart';
import '../../../../widgets/text.dart';
import '../components/service_provider/document_list.dart';
import '../components/service_provider/first_row.dart';
import '../components/service_provider/specialties_list.dart';
import '../components/service_provider/name_ianguage_icons_component.dart';
import '../components/service_provider/info_component.dart';

class ServiceProvider extends ConsumerWidget {
  const ServiceProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                ///pop button
                Padding(
                  padding: const EdgeInsets.all(SizesGeneral.size20),
                  child: appbarIcon(() {
                    Navigator.pop(context);
                  }),
                ),
                const SizedBox(
                  height: SizesGeneral.size12,
                ),

                ///This is a component of the image and its surroundings
                FirstRow(),
                NameLanguageIconsComponent(),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subTitlesProfile(StringsGeneral.info),

                  ///info
                  InfoComponent(),

                  ///biogtaphy
                  subTitlesProfile(StringsGeneral.biography),
                  Padding(
                    padding: const EdgeInsets.only(left: SizesGeneral.size20),
                    child: Container(
                        width: 340 * width,
                        child: text(
                            txt: StringsGeneral.discriptionBiography,
                            size: SizesGeneral.size16)),
                  ),
                  subTitlesProfile(StringsGeneral.specialties),

                  ///Create Special list with provider
                  SpecialList(),
                  subTitlesProfile(StringsGeneral.documantation),

                  ///Create documant list with provider
                  DocumantList(),

                  ///the blue button
                  const SizedBox(
                    height: SizesGeneral.size7,
                  ),
                  Center(
                      child: defultButton(
                          press: () {},
                          width: SizesGeneral.size350 * 0.92,
                          txt: StringsGeneral.makeAppointment)),
                  subTitlesProfile(StringsGeneral.reviews),

                  ///list of review
                  Review(),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
