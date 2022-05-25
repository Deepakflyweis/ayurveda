import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/moduels/timeslot/timeslot_pay_screen.dart';
import 'package:ayurveda/utils/app_color.dart';

import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class TimeSlotScreen extends StatefulWidget {
  const TimeSlotScreen({Key? key}) : super(key: key);

  @override
  State<TimeSlotScreen> createState() => _TimeSlotScreentate();
}

class _TimeSlotScreentate extends State<TimeSlotScreen> {
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
                  height: 2.h,
                ),
                Text(
                  "Book video Consultation from these time slots",
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text("₹ 500", style: TxtStyleN),
                    Text(
                      "  Per Slot",
                      style: hintTxtStyle,
                    )
                  ],
                ),
                Divider(
                  color: divclr,
                  thickness: 3,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(" April     ", style: TxtStyleN),
                    Text(
                      "May ",
                      style: hintTxtStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 7.h,
                  child: ListView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 7.h,
                          width: 10.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xffD1C5C5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text("6", style: TxtStyleN),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/morn.png",
                      width: 7.w,
                    ),
                    Text(
                      " Morning",
                      style: TxtStyleN,
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Wrap(
                  children: [
                    for (int i = 0; i < 12; i++)
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Chip(
                          label: Text(
                            "8:00 AM",
                            style: TxtStyleN,
                          ),
                          elevation: 5,
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/noon.png",
                      width: 7.w,
                    ),
                    Text(
                      " Noon",
                      style: TxtStyleN,
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Wrap(
                  children: [
                    for (int i = 0; i < 8; i++)
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Chip(
                          label: Text(
                            "8:00 AM",
                            style: TxtStyleN,
                          ),
                          elevation: 5,
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/eve.png",
                      width: 6.w,
                    ),
                    Text(
                      " Night",
                      style: TxtStyleN,
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Wrap(
                  children: [
                    for (int i = 0; i < 8; i++)
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Chip(
                          label: Text(
                            "8:00 AM",
                            style: TxtStyleN,
                          ),
                          elevation: 5,
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => TimeslotPayScreen());
                  },
                  child: Container(
                    height: 5.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: boxgreenclr),
                    alignment: Alignment.center,
                    child: const Text("Book",
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
