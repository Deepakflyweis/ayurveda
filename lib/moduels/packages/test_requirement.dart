
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';

class TestRequirement extends StatelessWidget {
  const TestRequirement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
         children: [
           SizedBox(height: 2.h,),
           Row(
             children: const [
               Text("Sample Type ",style: TextStyle(
                 color: hinttxtclr,fontSize:16 ,fontWeight: FontWeight.w600
               ),),
               Text(" : Blood, Urine",style: TextStyle(
                 color: blckclr,fontSize:16 ,fontWeight: FontWeight.w600
               ),),
             ],
           ),
           SizedBox(height: 1.h,),
           Row(
             children: const [
               Text("Fasting Required ",
                 style: TextStyle(
                 color: hinttxtclr,fontSize:16 ,fontWeight: FontWeight.w600
               ),),
               Text(" : 10-12 Hrs",
                 style: TextStyle(
                 color: blckclr,fontSize:16 ,fontWeight: FontWeight.w600
               ),),
             ],
           ),
         ],
    );
  }
}
