import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testfirebase/profile/components/title.dart';
import 'package:testfirebase/profile/service_provider/service_provider_fillter/screens/service_provider_fillter.dart';
import 'package:testfirebase/profile/widgets/list_service.dart';
import 'package:testfirebase/profile/widgets/text_fild.dart';
import '../../../../../../../core/resource/colors.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../../../core/resource/strings.dart';
import '../../../../components/users_components/chips_search_component.dart';
import '../../../../widgets/icon_filtter.dart';

class ServiceProviders extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var width = MediaQuery.of(context).size.width / 390;
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorGeneral.background,
            body: Column(children: [
              const SizedBox(
                height: SizesGeneral.size54,
              ),
              GeneralTitle(
                mainTitle: StringsGeneral.titleService,
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
                            builder: (context) => ServiceProviderFillter()));
                  }),
                ],
              ),
              const SizedBox(
                height: SizesGeneral.size8,
              ),
              //التأكد من العمل اذا كان صحيحاً : المكونات و مدير الحالة
              ChipsSearchComponent(),
              const SizedBox(
                height: SizesGeneral.size37,
              ),
              listViewService(),
            ])));
  }
}
