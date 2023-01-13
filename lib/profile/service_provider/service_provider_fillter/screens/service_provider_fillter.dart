import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../../core/resource/colors.dart';
import '../../../../../../../core/resource/fonts.dart';
import '../../../../../../../core/resource/icons.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../../../core/resource/strings.dart';
import '../../../components/fillters_components/checkbox_component.dart';
import '../../../components/fillters_components/city_search_component.dart';
import '../../../components/fillters_components/district_search_component.dart';
import '../../../components/title.dart';
import '../../../widgets/appbar_icon.dart';
import '../../../widgets/button.dart';
import '../../../widgets/text.dart';
import '../../service_providers/presentation/screens/service_providers.dart';

class ServiceProviderFillter extends ConsumerWidget {
  bool homeChecked = true;
  bool onlineChecked = true;
  bool centerChecked = true;
  bool adana = true;
  bool gaziantap = true;
  bool any = true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorGeneral.background,
        body: Padding(
          padding: const EdgeInsets.all(SizesGeneral.size20),
          child: Column(
            children: [
              appbarIcon(() {
                Navigator.pop(context);
              }),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: SizesGeneral.size34,
                      ),
                      GeneralTitle(
                        mainTitle: StringsGeneral.titleService,
                        subTitle: StringsGeneral.pleaseDetermineYourCriteria,
                      ),
                      const SizedBox(
                        height: SizesGeneral.size42,
                      ),
                      CitySearchComponent(gaziantap, adana),
                      const SizedBox(
                        height: SizesGeneral.size10,
                      ),
                      DistrictSearchComponent(any),
                      const SizedBox(
                        height: SizesGeneral.size28,
                      ),
                      CheckBoxComponent(
                          homeChecked, centerChecked, onlineChecked),
                      const SizedBox(
                        height: SizesGeneral.size28,
                      ),
                      defultButton(
                          txt: StringsGeneral.applay,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServiceProviders()));
                      }),
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
