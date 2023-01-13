import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../../core/resource/sizes.dart';
import '../../../../../widgets/chip.dart';
import '../../../../../widgets/list_service.dart';
import '../../controller/service_provider_cont.dart';
class SpecialList extends ConsumerWidget {
  const SpecialList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final a = ref.watch(selectedUserProv);
    return SizedBox( height: SizesGeneral.size50,
        child:
        Padding(
          padding: const EdgeInsets.only(left: SizesGeneral.size20),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder:  (context,index){
                return chip(txt: a?.specialties[index]);
              },
              separatorBuilder:(BuildContext context, int index)=>const SizedBox(width: SizesGeneral.size12,),
              itemCount: a!.documantation.length),
        )

    );
  }
}
/*

Widget specialList()=>SizedBox( height: SizesGeneral.size50,
  child: Consumer<ServiceProvidersProvider>(
    builder: (BuildContext context, value, Widget? child) {
      return
        Padding(
          padding: const EdgeInsets.only(left: SizesGeneral.size20),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder:  (context,index){
                return chip(txt: value.getMyNotes.last.specialties[index]);
              },
              separatorBuilder:(BuildContext context, int index)=>const SizedBox(width: SizesGeneral.size12,),
              itemCount: value.getMyNotes.last.documantation.length),
        );

    },
  ),
);

*/
