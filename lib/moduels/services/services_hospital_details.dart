import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/moduels/timeslot/tmeslot_doctor_profile.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class ServicesHospitalDetail extends StatelessWidget {
  const ServicesHospitalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: btngreen,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: whiteclr,
            )),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/hosp.png",
              width: 100.w,
              height: 20.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: btngreen,
                ),
                Text(
                  "Shathayu Ayurveda Clinic",
                  style: TxtStyleN,
                ),
                Spacer(),
                Container(
                  height: 3.h,
                  width: 12.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: btngreen,
                  ),
                  child: Row(
                    children: const [
                      Text('  4.5 '),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ],
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
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Doctors",
              style: TxtStyleG,
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 10.h,
              child: ListView.builder(
                itemCount: 12,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => TimeslotDoctorProfile());
                    },
                    child: Container(
                      height: 13.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: divclr),
                      ),
                      child: Image.network(
                        "src",
                        fit: BoxFit.cover,
                        errorBuilder: (context, Object, StackTrace) => Center(
                            child: Image.asset("assets/images/strange.png",
                                fit: BoxFit.cover)),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            const Divider(
              color: hinttxtclr,
              thickness: 0.8,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Discription",
              style: TxtStyleG,
            ),
            SizedBox(
              height: 2.h,
            ),
            AutoSizeText(
              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod. dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.",
              maxLines: 4,
              style: hintTxtStyle,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Facilities",
              style: TxtStyleG,
            ),
            SizedBox(
              width: 90.w,
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: btngreen,
                        ),
                        Text(
                          "Parking",
                          style: TxtStyleL,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
