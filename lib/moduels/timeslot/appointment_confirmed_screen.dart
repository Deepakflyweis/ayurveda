import 'package:ayurveda/moduels/services/hospital_fo_treat.dart';
import 'package:ayurveda/moduels/timeslot/timeslot_screen.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class AppointmentConfirmedScreen extends StatelessWidget {
  const AppointmentConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: Icon(
                  Icons.check_circle_outline,
                  color: boxgreenclr,
                  size: 25.h,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                  child: Text(
                "Appointment Confirmed",
                style: TxtStyleG,
              )),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Your appointment booked in Dr Strange  for massage",
                style: TxtStyleN,
              ),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: Card(
                    elevation: 3,
                    child: SizedBox(
                      width: 95.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Time",
                            style: TxtStyleN,
                          ),
                          Text(
                            "6 April 8:00 AM",
                            style: hintTxtStyle,
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 2.h,
              ),
              Card(
                elevation: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Need our Help",
                          style: TxtStyleN,
                        ),
                        Text(
                          "9188844485",
                          style: TxtStyleN,
                        ),
                      ],
                    ),
                    Text(
                      "For any query call on this number",
                      style: hintTxtStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              InkWell(
                onTap: () {
                     Get.offAll(() => HospitalsForTreat());
                },
                child: Center(
                  child: Container(
                    height: 5.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff393A3C),
                    ),
                    alignment: Alignment.center,
                    child: const Text("Back to Home",
                        style: TextStyle(
                            color: whiteclr,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
            ]),
      ),
    );
  }
}
