import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/sizes.dart';
import '../../../../../core/resource/strings.dart';
import '../../service_provider/service_provider_fillter/controller/service_provider_fillter_controller.dart';
import '../../widgets/checkbox.dart';
import '../../widgets/chip.dart';
import '../../widgets/text.dart';
import '../../widgets/text_fild.dart';

class CitySearchComponent extends ConsumerWidget {
   CitySearchComponent(this.gaziantap,this.adana,{Key? key}) : super(key: key);
bool gaziantap;
bool adana;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final gaziantapState = ref.watch(gaziantapProvider);
    final adanaState = ref.watch(adanaProvider);
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text(txt: StringsGeneral.city),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //text box for search
            textFild(),

            SizedBox(
              height: SizesGeneral.size10,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    ref
                        .read(gaziantapProvider.notifier)
                        .state = gaziantap;
                    gaziantap = !gaziantap;
                  },
                  child: chip(
                      clr: gaziantapState == true
                          ? ColorGeneral.seacrhGrey
                          : ColorGeneral.chipUnselected,
                      width: SizesGeneral.size100,
                      height: SizesGeneral.size40,
                      txt: StringsGeneral.gaziantep),
                ),
                SizedBox(
                  width: SizesGeneral.size5,
                ),
                GestureDetector(
                  onTap: () {

                    ref.read(adanaProvider.notifier).state =
                        adana;
                    adana = !adana;
                  },
                  child: chip(
                      clr: adanaState == true
                          ? ColorGeneral.seacrhGrey
                          : ColorGeneral.chipUnselected,
                      width: SizesGeneral.size75,
                      height: SizesGeneral.size40,
                      txt: StringsGeneral.adana),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
