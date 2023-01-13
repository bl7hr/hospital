
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/resource/sizes.dart';
import '../../../../../core/resource/strings.dart';
import '../../../../service_provider/service_providers/presentation/components/service_provider/container_profile.dart';
import '../../../../widgets/listofPatient.dart';

class InfoComponentP extends ConsumerWidget {
  const InfoComponentP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final a = ref.watch(selectedPatientProv);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: SizesGeneral.size20,),
            containerProfileService(
                    StringsGeneral.price,
                    '${a?.individualSession}'),

          const SizedBox(width: SizesGeneral.size17,),
            containerProfileService(
                    StringsGeneral.patients,
                    '${a?.session}')
              ,
        ],
      ),
    );
  }
}
/*

Widget infoComponent()=>SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      const SizedBox(width: SizesGeneral.size20,),
      Consumer<ServiceProvidersProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return   containerProfileService(
                StringsGeneral.price,
                '${value.getMyNotes.last.price}');
          } ),
      const SizedBox(width: SizesGeneral.size17,),
      Consumer<ServiceProvidersProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return   containerProfileService(
                StringsGeneral.patients,
                '+${value.getMyNotes.last.patients}');
          } ),
      const SizedBox(width: SizesGeneral.size17,),
      Consumer<ServiceProvidersProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return   containerProfileService(
                StringsGeneral.session,
                '${value.getMyNotes.last.session}');
          } ),
    ],
  ),
);*/
