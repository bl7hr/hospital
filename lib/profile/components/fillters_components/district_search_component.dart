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
class DistrictSearchComponent extends ConsumerWidget {
   DistrictSearchComponent(this.any, {Key? key}) : super(key: key);
 bool any;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final anyState = ref.watch(anyProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text(txt: StringsGeneral.district),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //text box for search
            textFild(),
            SizedBox(
              height: SizesGeneral.size8,
            ),
            GestureDetector(
              onTap: () {
                ref.read(anyProvider.notifier).state = any;
                any = !any;
              },
              child: chip(
                  clr: anyState == true
                      ? ColorGeneral.seacrhGrey
                      : ColorGeneral.chipUnselected,
                  width: SizesGeneral.size75,
                  height: SizesGeneral.size40,
                  txt: StringsGeneral.any),
            )
          ],
        ),
      ],
    );
  }
}
