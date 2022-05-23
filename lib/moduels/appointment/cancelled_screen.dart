
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class CancelledScreen extends StatefulWidget {
  const CancelledScreen({Key? key}) : super(key: key);

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index){
              return Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 15.h,
                  width: 85.w,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0,color: hinttxtclr),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white60,
                        offset:   Offset(
                          1.0,
                          1.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 10.0,
                      ),  ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 2.w,),
                      CircleAvatar(
                        radius: 45,
                        child: Image.asset('assets/images/doc.png',fit: BoxFit.fill),
                      ),
                      SizedBox(width: 2.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height:  2.h,),
                          Text('Doctor name',style: TxtStyleB,),
                          SizedBox(height:  1.h,),
                          Text('Heart Surgeon -  National Hospital',style: hintTxtStyle,),
                          Expanded(
                            child: Row(
                              children: const [
                                Icon(Icons.timelapse,color: blckclr,size: 15),
                                Text('10:00 AM'),

                                Icon(Icons.calendar_today,color: blckclr,size: 15),
                                Text('12/09/21'),


                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
