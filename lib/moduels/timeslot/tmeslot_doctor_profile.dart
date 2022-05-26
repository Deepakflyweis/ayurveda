import 'dart:ui';

import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 
class TimeslotDoctorProfile extends StatefulWidget {
  const TimeslotDoctorProfile({Key? key}) : super(key: key);

  @override
  State<TimeslotDoctorProfile> createState() => _TimeslotDoctorProfileState();
}

class _TimeslotDoctorProfileState extends State<TimeslotDoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
               AppBar(
                  backgroundColor: whiteclr,
                  elevation: 0,
                  title: Text("Doctor", style: TxtStyleB),
                  leading: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: blckclr,
                        size: 35,
                      )),
                ),
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffffffff),
                        Color(0xff7A7AB5),
                    ]),
                     ),
                     child: Stack(
                       children: [
                         Positioned(
                           top: 10.h,
                           left: 3.w,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Dr. Strange",style: TxtStyleN,),
                             Text("5 Years experince",style: TextStyle(color: blueclr,fontWeight: FontWeight.bold),),
                             Text("4.5",style: TxtStyleN,)
                           ],
                         ),),
                         Positioned(
                           top: 4.h,
                           right: 1.w,
                           child: SizedBox(
                             width: 40.w,
                             child: Image.network(
                                    "src",
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, Object, StackTrace) => Center(
                                        child: Image.asset("assets/images/sdoc.png",
                                            fit: BoxFit.cover)),
                                  ),
                           ),)
                     ]
                     ),
                ),
                SizedBox(height: 2.h,),
                Center(
                  child: SizedBox(
                    width: 75.w,
                    height: 15.h,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egestas lacus suspendisse dis adipiscing neque. Feugiat sed quis id vestibulum a, sollicitudin scelerisque morbi. Pulvinar eu consectetur viverra vestibulum gravida eget sed. Nulla cursus mauris dui orci mattis a, elementum placerat vitae.",
                    style: TxtStyleL,maxLines: 6,
                  ),
                 ),
               ),

                  SizedBox(height: 2.h,),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Center(
                      child: Container(
                        height: 6.h,
                        width: 75.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff7B61FF),
                        border: Border.all(
                           color: blckclr,
                           width: 1.5
                        )
                      ),
                      child: Text("Book an Appointment",style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Center(
                      child: Container(
                        height: 6.h,
                        width: 75.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        border: Border.all(
                           color: blckclr,
                           width: 1.5
                        )
                      ),
                      child: Text("Message"),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Center(
                      child: Container(
                        height: 6.h,
                        width: 75.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                           color: Color(0xffB9A4A4),
                        border: Border.all(
                           color: blckclr,
                           width: 1.5
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.video_call,color: blckclr,),
                          Text("Video Consultation"),
                        ],
                      ),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
