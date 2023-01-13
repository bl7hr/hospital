import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/resource/colors.dart';
import '../../../../../../core/resource/fonts.dart';
import '../../../../../../core/resource/icons.dart';
import '../../../../../../core/resource/sizes.dart';
import '../../../../../widgets/blue_icon.dart';
import '../../../../../widgets/list_service.dart';
import '../../../../../widgets/text.dart';
import '../../controller/service_provider_cont.dart';
class NameLanguageIconsComponent extends ConsumerWidget {
  const NameLanguageIconsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final a = ref.watch(selectedUserProv);
    return Column(
      children: [
        SizedBox(
          height: SizesGeneral.size11,
        ),
        text(
            txt: '${a?.name}',
            size: SizesGeneral.size24,
            fontWeight: FontsGeneral.w700),

        text(
            txt: '${a?.lang.first},${a?.lang.last}',
            size: SizesGeneral.size14,
            clr: ColorGeneral.textGrey),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           a?.inhome==true? blueIcon(IconGeneral.blueHome):SizedBox(),
            SizedBox(width: SizesGeneral.size20,),
            a?.inhospital==true? blueIcon(IconGeneral.blueHospital):SizedBox(),
            a?.inhospital==true?SizedBox(width: SizesGeneral.size20,):SizedBox(),
            a?.online==true? blueIcon(IconGeneral.blueAction):SizedBox(),
          ],
        ),
        const SizedBox(
          height: SizesGeneral.size3,
        ),
        const SizedBox(
          height: SizesGeneral.size3,
        ),
      ],
    );
  }
}