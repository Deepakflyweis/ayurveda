import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/moduels/timeslot/appointment_confirmed_screen.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 

class TimeslotPayScreen extends StatelessWidget {
  const TimeslotPayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteclr,
          elevation: 0,
          title: Text("Time slots", style: TxtStyleB),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 2.h,
                    ),
                    Container(
                      height: 10.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          // color: blueclr,
                          border: Border.all(width: 1, color: blckclr),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        "src",
                        fit: BoxFit.fill,
                        errorBuilder: (context, Object, StackTrace) => Center(
                            child: Image.asset("assets/images/doc.png",
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      width: 2.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Strange",
                          style: TxtStyleN,
                        ),
                        AutoSizeText(
                          "Lorem ipsum dolor sit amet, New Delhi ",
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          style: hintTxtStyle,
                        ),
                        AutoSizeText(
                          "New Delhi, Pincode -110091",
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          style: hintTxtStyle,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
               const Divider(
                  color: blckclr,
                  thickness: 1.0,
                ),
                Container(
                  color: Color(0xffF1D0D0),
                  height: 8.h,
                  child: Row(                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Service Type",style: TxtStyleN,),
                          Text("Service Type",style: TxtStyleN,),
                          Text("Service Type",style: TxtStyleN,),                         
                        ],
                      ),
                      SizedBox(width: 3.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Video Consultaion",style: TxtStyleN,),
                          Text("8:40 am",style: TxtStyleN,),
                          Text("??? 500",style: TxtStyleN,),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: blckclr,
                  thickness: 1.0,
                ),
                SizedBox(height: 1.h,),
                Text("About Clinic",style: TxtStyleN,),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu maecenas rhoncus feugiat pellentesque tristique turpis. Diam vitae ac, adipiscing libero imperdiet velit purus bibendum sed. Blandit congue mattis nullam mattis sit libero ut. Nunc quis leo molestie nibh.",
                style: hintTxtStyle),
                SizedBox(height: 1.h,),
                const Divider(
                  color: blckclr,
                  thickness: 1.0,
                ),
                 SizedBox(height: 1.h,),
                Text("Hospital Gallery",style: TxtStyleN,),
                SizedBox(height: 1.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/hospg.png",height: 15.h,width: 30.w,fit: BoxFit.fill),
                    Image.asset("assets/images/hospg.png",height: 15.h,width: 30.w,fit: BoxFit.fill),
                    Image.asset("assets/images/hospg.png",height: 15.h,width: 30.w,fit: BoxFit.fill),
                  ],
                ),
                SizedBox(height: 2.h,),
                const Divider(
                  color: blckclr,
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                      Get.to(() => AppointmentConfirmedScreen());
                  },
                  child: Container(
                    height: 5.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: boxgreenclr),
                    alignment: Alignment.center,
                    child: const Text("Pay",
                        style: TextStyle(
                            color: whiteclr,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                

              ],
            ),
          ),
        ),
      ),
    );
  }
}
