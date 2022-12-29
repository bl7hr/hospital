
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/resource/icons.dart';
import '../../../../../../core/resource/sizes.dart';
import '../../../../../widgets/blue_icon.dart';
import '../../controller/patientprovider.dart';

Widget iconsRowPateint()=>Consumer<Patientprovider>(builder:  (BuildContext context, ref, Widget? child)
{
return Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
ref.getMyNotes.last.inhome==true? blueIcon(IconGeneral.blueHome):SizedBox(),
SizedBox(width: SizesGeneral.size20,),
ref.getMyNotes.last.inhospital==true? blueIcon(IconGeneral.blueHospital):SizedBox(),
SizedBox(width: SizesGeneral.size20,),
ref.getMyNotes.last.online==true? blueIcon(IconGeneral.blueAction):SizedBox(),
],
);
});