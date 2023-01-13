import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/resource/colors.dart';
import '../../../../../core/resource/sizes.dart';
import '../../../../../core/resource/strings.dart';
import '../../service_provider/service_provider_fillter/controller/service_provider_fillter_controller.dart';
import '../../widgets/checkbox.dart';
import '../../widgets/text.dart';

class CheckBoxComponent extends ConsumerWidget {
  CheckBoxComponent(this.homeChecked, this.centerChecked, this.onlineChecked,
      {Key? key})
      : super(key: key);
  bool homeChecked;
  bool centerChecked;
  bool onlineChecked;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeCheckedState = ref.watch(homeCheckedProvider);
    final onlineCheckedState = ref.watch(onlineCheckedProvider);
    final centerCheckedState = ref.watch(centerCheckedProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        text(txt: StringsGeneral.serviceType),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //text box for search
            chickBox(
              txt: StringsGeneral.home,
              checkBox: Checkbox(
                value: homeCheckedState,
                onChanged: (oncheck) {
                  ref.read(homeCheckedProvider.notifier).state = homeChecked;
                  homeChecked = !homeChecked;
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3.0))),
                activeColor: ColorGeneral.pink,
                side: BorderSide(color: ColorGeneral.pink, width: 2),
              ),
            ),
            const SizedBox(
              height: SizesGeneral.size10,
            ),
            chickBox(
              txt: StringsGeneral.center,
              checkBox: Checkbox(
                value: centerCheckedState,
                onChanged: (oncheck) {
                  ref.read(centerCheckedProvider.notifier).state =
                      centerChecked;
                  centerChecked = !centerChecked;
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3.0))),
                activeColor: ColorGeneral.pink,
                side: BorderSide(
                    color: ColorGeneral.pink, width: SizesGeneral.size2),
              ),
            ),
            const SizedBox(
              height: SizesGeneral.size10,
            ),
            chickBox(
              txt: StringsGeneral.online,
              checkBox: Checkbox(
                value: onlineCheckedState,
                onChanged: (oncheck) {
                  ref.read(onlineCheckedProvider.notifier).state =
                      onlineChecked;
                  onlineChecked = !onlineChecked;
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(SizesGeneral.size3))),
                activeColor: ColorGeneral.pink,
                side: BorderSide(color: ColorGeneral.pink, width: SizesGeneral.size2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
