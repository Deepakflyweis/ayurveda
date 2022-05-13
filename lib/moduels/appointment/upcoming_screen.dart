
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({Key? key}) : super(key: key);

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 10,
            shrinkWrap: true,
             scrollDirection: Axis.vertical,
            itemBuilder: (context, index){
              return Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 20.h,
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

                                AutoSizeText('Confirmed',style: TextStyle(
                                  color: blueclr,fontSize: 14
                                )),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {

                                },
                                child: Chip(
                                  backgroundColor: whiteclr,
                                  label: Text('   Cancel   ',style: TextStyle(color: btngreen)),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: btngreen, width: 1.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 2.w,),
                              InkWell(
                                onTap: () {

                                },
                                child: const Chip(
                                  backgroundColor: btngreen,
                                  label: Text(' Reschedule ',style: TextStyle(color: whiteclr)),
                                  elevation: 3,
                                ),
                              ),
                            ],
                          )
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
