import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/resource/sizes.dart';
import '../../../../../../core/resource/strings.dart';
import 'container_profile.dart';
import '../../controller/service_provider_cont.dart';

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
);