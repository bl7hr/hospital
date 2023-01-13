import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../widgets/chip.dart';
import '../../../../../widgets/list_service.dart';
import '../../../../../widgets/listofPatient.dart';
class DiseasesList extends ConsumerWidget {
  const DiseasesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final a = ref.watch(selectedPatientProv);
    return SizedBox( height: SizesGeneral.size50,
        child:
        Padding(
          padding: const EdgeInsets.only(left: SizesGeneral.size20),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder:  (context,index){
                return chip(txt: a.diseases![index]);
              },
              separatorBuilder:(BuildContext context, int index)=>const SizedBox(width: SizesGeneral.size12,),
              itemCount: a!.diseases!.length),
        )

    );
  }
}
