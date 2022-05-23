import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: ""),
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(15),
          children: [
             Align(
                   alignment: Alignment.center,
                      child: Text(
                        "Dr. John Doe",
                        style: TxtStyleN,
                      ),
                    ),

              const Align(
                      alignment: Alignment.center,
                      child:   Text(
                        "Heart Surgeon",
                        style: TextStyle(color: btngreen),
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    // Text("Schedule",style: TxtStyleN,),
                     SizedBox(height: 2.h,),
                    Text("Slots",style: TxtStyleN,),
                     SizedBox(height: 2.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Chip(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' Morning',style: TextStyle(color: btngreen)),
                        ), 

                        Chip(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: btngreen, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            label: Text(' Afternoon',style: TextStyle(color: btngreen)),
                        ),
                        
                        Chip(
                              elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' Evening',style: TextStyle(color: btngreen)),
                  ) 
              ],
                    ),
                     SizedBox(height: 3.h,),
                    Text("Available Time",style: TxtStyleN,),
                     SizedBox(height: 2.h,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Chip(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' 1:00 pm',style: TextStyle(color: btngreen)),
                        ), 

                        Chip(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: btngreen, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            label: Text(' 2:00 pm',style: TextStyle(color: btngreen)),
                        ),
                        
                        Chip(
                              elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' 3:00 pm',style: TextStyle(color: btngreen)),
                  ) ,
                  Chip(
                              elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' 4:00 pm',style: TextStyle(color: btngreen)),
                  ) 
              ],
                    ),                    
                     SizedBox(height: 3.h,),
                    Text("Appointment Type",style: TxtStyleN,),
                     SizedBox(height: 3.h,),
                    Row(
                      
                      children: [
                        Chip(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' Online',style: TextStyle(color: btngreen)),
                        ), 
                        SizedBox(width: 5.w,),
                        Chip(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: btngreen, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            label: Text(' Offline',style: TextStyle(color: btngreen)),
                        ),
                                     ],
                    ),
                    SizedBox(height: 3.h,),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Card(
                        elevation: 5,                  
                        child: ListTile(
                          leading: Icon(Icons.video_call,color: btngreen),
                          title: Text("Video Call",style: TxtStyleN),
                          subtitle: Text("Can make a video call with doctor",style: TxtStyleL ),
                          trailing: Text("\$20",style: TextStyle(color: btngreen)),
                        ),
                      ),
                    ),


                    SizedBox(height: 3.h,),
                    InkWell(
                      onTap: () {
                        // Get.to(() => GetAppointmentScreen());
                      },
                      child: Center(
                        child: Container(
                          height: 4.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: btngreen),
                          alignment: Alignment.center,
                          child: Text("Continue",
                              style: TextStyle(
                                  color: whiteclr,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    )
                    
          ],
        ),
      ),
    );
  }
}
