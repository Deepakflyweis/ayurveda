import 'package:ayurveda/moduels/doctor_module/get_appointment.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppbar(title: "Payment"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 25.h,
              width: 100.w,
              alignment: Alignment.center,
              color: btngreen,
              child: CircleAvatar(
                radius: 55,
                child: Image.asset("assets/images/doc.png", fit: BoxFit.fill),
              ),
            ),
            Container(
                height: 75.h,                
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Dr. John Doe",
                        style: TxtStyleG,
                      ),
                    ),

                     const Align(
                      alignment: Alignment.center,
                      child:   Text(
                        "Heart Surgeon",
                        style: TextStyle(color: btngreen),
                      ),
                    ),
                     const Align(
                       alignment: Alignment.center,
                       child: Icon(
                        Icons.star,
                        color: Colors.amber,
                                         ),
                     ),
                    SizedBox(height: 2.h,),

                    Text("About", style: TxtStyleN),

                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. ",
                      style: hintTxtStyle,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                    ),

                    SizedBox(height: 2.h,),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. ",
                      style: hintTxtStyle,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                    ),
                  
                    
                    SizedBox(
                      height: 2.h,
                    ),
                    Text("Reviews", style: TxtStyleN),
                    SizedBox(
                      height: 2.h,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        child: Image.asset("assets/images/doc.png",
                            fit: BoxFit.fill),
                      ),
                      title: Text("David Seth", style: TxtStyleN),
                      trailing: Icon(Icons.star_border, color: Colors.amber),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => GetAppointmentScreen());
                      },
                      child: Center(
                        child: Container(
                          height: 4.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: btngreen),
                          alignment: Alignment.center,
                          child: Text("Get Appointment",
                              style: TextStyle(
                                  color: whiteclr,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
