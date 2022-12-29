import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/resource/sizes.dart';
import '../../../../../../core/resource/strings.dart';
import '../../controller/patientprovider.dart';
import 'container_profile.dart';

Widget infoPatient()=>SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      const SizedBox(width: SizesGeneral.size20,),
      Consumer<Patientprovider>(
          builder: (BuildContext context, value, Widget? child) {
            return   containerProfilePateint(
                StringsGeneral.individualSession,
                '${value.getMyNotes.last.IndividualSession}');
          } ),
      const SizedBox(width: SizesGeneral.size17,),
      Consumer<Patientprovider>(
          builder: (BuildContext context, value, Widget? child) {
            return   containerProfilePateint(
                StringsGeneral.groupSession,
                '${value.getMyNotes.last.groupSession}');
          } ),
    ],
  ),
);