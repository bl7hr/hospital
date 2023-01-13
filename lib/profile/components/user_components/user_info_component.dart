import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/resource/fonts.dart';
import '../../../core/resource/sizes.dart';
import '../../service_provider/service_providers/presentation/components/service_provider/first_row.dart';
import '../../service_provider/service_providers/presentation/components/service_provider/name_ianguage_icons_component.dart';
import '../../service_provider/service_providers/presentation/controller/service_provider_cont.dart';
import '../../widgets/appbar_icon.dart';
import '../../widgets/text.dart';
/*
class UserInfoComponent extends ConsumerWidget {
  const UserInfoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Container(
      child: Column (
        children: [
          ///pop button
          Padding(
            padding: const EdgeInsets.all(SizesGeneral.size20),
            child: appbarIcon((){Navigator.pop(context);}),
          ),
          const SizedBox(height:SizesGeneral.size12,),
          ///This is a component of the image and its surroundings
          FirstRow(),
          SizedBox(height: SizesGeneral.size11,),
         *//* Consumer<ServiceProvidersProvider>(builder: (BuildContext context, ref, Widget? child){
            return   text(txt: '${ref.getMyNotes.last.name}', size: SizesGeneral.size24,
                fontWeight: FontsGeneral.w700
            );}),
          Consumer<ServiceProvidersProvider>(builder: (BuildContext context, ref, Widget? child){
            return   text(txt: '${ref.getMyNotes.last.lang.first},${ref.getMyNotes.last.lang.last}',
                size: SizesGeneral.size14,
                clr: ColorGeneral.textGrey
            );}),*//*
          IconsRow(),
        ],
      ),
    );
  }
}*/
