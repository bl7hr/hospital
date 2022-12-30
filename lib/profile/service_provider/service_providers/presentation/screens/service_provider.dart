import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testfirebase/profile/service_provider/service_providers/presentation/controller/service_provider_cont.dart';
import '../../../../../../../../core/resource/colors.dart';
import '../../../../../../../../core/resource/fonts.dart';
import '../../../../../../../../core/resource/icons.dart';
import '../../../../../../../../core/resource/sizes.dart';
import '../../../../../../../../core/resource/strings.dart';
import '../../../../widgets/appbar_icon.dart';
import '../../../../widgets/blue_icon.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/chip.dart';
import '../../../../widgets/list_review.dart';
import '../../../../widgets/list_service.dart';
import '../../../../widgets/review.dart';
import '../../../../widgets/sub_titles_profile.dart';
import '../../../../widgets/text.dart';
import '../components/service_provider/container_profile.dart';
import '../components/service_provider/document_list.dart';
import '../components/service_provider/first_row.dart';
import '../components/service_provider/specialties_list.dart';
import '../components/service_provider/icons_row.dart';
import '../components/service_provider/info_component.dart';


getData()async{
  CollectionReference users= FirebaseFirestore.instance.collection('users');
  QuerySnapshot querySnapshot=  await users.get();
  List<QueryDocumentSnapshot> listDocs=  querySnapshot.docs;
  listDocs.forEach((element) {
    print(element.data());
  });

}
var snapshot;
QuerySnapshot? querySnapshot = snapshot.data;
List<QueryDocumentSnapshot> documents = querySnapshot!.docs;
//Convert the documents to Maps
List<Map> items = documents.map((e) => e.data() as Map).toList();
CollectionReference users= FirebaseFirestore.instance.collection('users');
CollectionReference reveiws= FirebaseFirestore.instance.collection('reveiw');
late Stream<QuerySnapshot> _stream;


class ServiceProvider extends StatelessWidget {

  const ServiceProvider({Key? key}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    Size getsize(){
      return MediaQuery.of(context).size;
    }
    var width=getsize().width/390;
    return SafeArea(child:
    Scaffold
      (
      body: Column(
        children: [
          Container(
            child: Column (

              children: [
                ///pop button
                Padding(
                  padding: const EdgeInsets.all(SizesGeneral.size20),
                  child: appbarIcon((){Navigator.pop(context);}),
                ),
                const SizedBox(height:SizesGeneral.size12,),
               ///This is a component of the image and its surroundings
               firstRow(),
                SizedBox(height: SizesGeneral.size11,),
                Consumer<ServiceProvidersProvider>(builder: (BuildContext context, ref, Widget? child){
                  return   text(txt: '${ref.getMyNotes.last.name}', size: SizesGeneral.size24,
                      fontWeight: FontsGeneral.w700
                  );}),
                Consumer<ServiceProvidersProvider>(builder: (BuildContext context, ref, Widget? child){
                  return   text(txt: '${ref.getMyNotes.last.lang.first},${ref.getMyNotes.last.lang.last}',
                      size: SizesGeneral.size14,
                      clr: ColorGeneral.textGrey
                  );}),
                iconsRow(),
              ],
            ),
          ),
         const SizedBox(height: SizesGeneral.size3,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subTitlesProfile(StringsGeneral.info),
                  ///info
                  infoComponent(),
                  ///biogtaphy
                  subTitlesProfile(StringsGeneral.biography),
                  Padding(
                    padding: const EdgeInsets.only(left: SizesGeneral.size20),
                    child: Container(
                        width:340*width,child: Consumer<ServiceProvidersProvider>(
                        builder: (BuildContext context, value, Widget? child) {
                          return  text(txt: StringsGeneral.discriptionBiography,size: SizesGeneral.size16);
                        } ),),
                  ),
                  subTitlesProfile(StringsGeneral.specialties),
                  ///Create Special list with provider
                  specialList(),
                  subTitlesProfile(StringsGeneral.documantation),
                  ///Create documant list with provider
                    documantList(),
                 ///the blue button
                  const SizedBox(height: SizesGeneral.size7,),
                  Center(child: defultButton(press:(){print(reveiws);},width:SizesGeneral.size350*0.92,txt: StringsGeneral.makeAppointment))
                  ,subTitlesProfile(StringsGeneral.reviews),
                  ///list of review

                  reveiw(StringsGeneral.tonyDanza,StringsGeneral.date,StringsGeneral.secondReview,StringsGeneral.secomdimgReview,getsize().width),
                  reveiw(StringsGeneral.nameSurname,StringsGeneral.date,StringsGeneral.secondReview,StringsGeneral.firstimgReview,getsize().width)
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
