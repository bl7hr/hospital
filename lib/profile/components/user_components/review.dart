
import 'package:flutter/material.dart';

import '../../../core/resource/strings.dart';
import '../../widgets/review.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size getsize(){
      return MediaQuery.of(context).size;
    }
    return Column(
      children: [

        reveiw(StringsGeneral.tonyDanza,StringsGeneral.date,StringsGeneral.secondReview,StringsGeneral.secomdimgReview,getsize().width),
        reveiw(StringsGeneral.nameSurname,StringsGeneral.date,StringsGeneral.secondReview,StringsGeneral.firstimgReview,getsize().width)
      ],
    );
  }
}
