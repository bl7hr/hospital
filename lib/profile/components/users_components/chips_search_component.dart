import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/sizes.dart';
import '../../../../../core/resource/strings.dart';
import '../../service_provider/service_providers/presentation/controller/service_provider_cont.dart';
import '../../widgets/checkbox.dart';
import '../../widgets/chip.dart';
import '../../widgets/text.dart';

class ChipsSearchComponent extends ConsumerWidget {
  ChipsSearchComponent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final anyState = ref.watch(anyProviderForSearch);
    final sportState = ref.watch(sportProvider);
    final orthopState = ref.watch(orthopProvider);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: SizesGeneral.size20,
          ),
          chip(
              txt: StringsGeneral.any,
              width: SizesGeneral.size80,
              onpress: () {
                ref.read(anyProviderForSearch.notifier).state = true;
                ref.read(sportProvider.notifier).state = false;
                ref.read(orthopProvider.notifier).state = false;
              },
              clr: anyState == true
                  ? ColorGeneral.seacrhGrey
                  : ColorGeneral.chipUnselected),
          const SizedBox(
            width: SizesGeneral.size9,
          ),
          chip(
              txt: StringsGeneral.sports,
              onpress: () {
                ref.read(anyProviderForSearch.notifier).state = false;
                ref.read(sportProvider.notifier).state = true;
                ref.read(orthopProvider.notifier).state = false;
              },
              clr: sportState == true
                  ? ColorGeneral.seacrhGrey
                  : ColorGeneral.chipUnselected),
          const SizedBox(
            width: SizesGeneral.size9,
          ),
          chip(
              txt: StringsGeneral.orthopedics,
              onpress: () {
                ref.read(anyProviderForSearch.notifier).state = false;
                ref.read(sportProvider.notifier).state = false;
                ref.read(orthopProvider.notifier).state = true;
              },
              clr: orthopState == true
                  ? ColorGeneral.seacrhGrey
                  : ColorGeneral.chipUnselected),
        ],
      ),
    );
  }
}
