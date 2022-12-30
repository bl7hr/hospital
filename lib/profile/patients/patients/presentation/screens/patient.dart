import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testfirebase/profile/patients/patients/presentation/controller/patientprovider.dart';
import 'package:testfirebase/profile/widgets/button.dart';
import '../../../../../../../../core/resource/colors.dart';
import '../../../../../../../../core/resource/fonts.dart';
import '../../../../../../../../core/resource/sizes.dart';
import '../../../../../../../../core/resource/strings.dart';
import '../../../../widgets/appbar_icon.dart';
import '../../../../widgets/review.dart';
import '../../../../widgets/sub_titles_profile.dart';
import '../../../../widgets/text.dart';
import '../components/patient/diseases_list.dart';
import '../components/patient/first_row_patient.dart';
import '../components/patient/icons_row_patient.dart';
import '../components/patient/info_patiet.dart';


var snapshot;
QuerySnapshot? querySnapshot = snapshot.data;
List<QueryDocumentSnapshot> documents = querySnapshot!.docs;
//Convert the documents to Maps
List<Map> items = documents.map((e) => e.data() as Map).toList();
CollectionReference users= FirebaseFirestore.instance.collection('patient');
late Stream<QuerySnapshot> _stream;
class Patient extends StatelessWidget {
  const Patient({Key? key}) : super(key: key);
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(SizesGeneral.size20),
                        child: appbarIcon(() {
                          Navigator.pop(context);
                        }),
                      ),
                      const SizedBox(height: SizesGeneral.size12,),
                      firstRowPatient(),
                      SizedBox(height: SizesGeneral.size11,),
                      Consumer<Patientprovider>(builder: (BuildContext context, ref, Widget? child){
                        return   text(txt: '${ref.getMyNotes.last.name}', size: SizesGeneral.size24,
                            fontWeight: FontsGeneral.w700
                            );}),
                      Consumer<Patientprovider>(builder: (BuildContext context, ref, Widget? child){
                        return   text(txt: '${ref.getMyNotes.last.lang.first},${ref.getMyNotes.last.lang.last}',
                            size: SizesGeneral.size14,
                            clr: ColorGeneral.textGrey
                        );}),
                      iconsRowPateint(),

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
                        infoPatient(),
                        subTitlesProfile(StringsGeneral.diseases),
                        diseasesList(),
                        const SizedBox(height: SizesGeneral.size7,),
                        ///button
                        Center(child: defultButton(press: () {
                        },
                            width: SizesGeneral.size350 * 0.92,
                            txt: StringsGeneral.contact))
                        , subTitlesProfile(StringsGeneral.reviews),
                        ///reveiws
                        reveiw(StringsGeneral.tonyDanza,StringsGeneral.date,
                            StringsGeneral.firstReview,
                            StringsGeneral.secomdimgReview, getsize().width),
                        reveiw(StringsGeneral.nameSurname,StringsGeneral.date,
                            StringsGeneral.secondReview,
                            StringsGeneral.firstimgReview, getsize().width)
                      ],
                    ),
                  ),
                )
              ],
            )
        ),
    );
  }
}
