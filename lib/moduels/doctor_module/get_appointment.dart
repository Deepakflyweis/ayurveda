import 'package:ayurveda/moduels/doctor_module/book_appointment.dart';
import 'package:ayurveda/utils/app_color.dart';

import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:table_calendar/table_calendar.dart';

class GetAppointmentScreen extends StatefulWidget {
  const GetAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<GetAppointmentScreen> createState() => _GetAppointmentScreenState();
}

class _GetAppointmentScreenState extends State<GetAppointmentScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final kToday = DateTime.now();
  late final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
  late final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: CustomAppbar(title: ""),
        body: SingleChildScrollView(
          child: Stack(alignment: Alignment.center, children: [
            Column(
              children: [
                Container(
                  height: 30.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  color: btngreen,
                  child: CircleAvatar(
                    radius: 55,
                    child:
                        Image.asset("assets/images/doc.png", fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    height: 100.h,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About", style: TxtStyleN),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin habitant donec habitant quis arcu aliquet non turpis. ",
                          style: hintTxtStyle,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text("Availability", style: TxtStyleN),
                        SizedBox(
                          height: 2.h,
                        ),

                        ////  Calender
                        TableCalendar(
                          focusedDay: _focusedDay,
                          firstDay: kFirstDay,
                          lastDay: kLastDay,
                          calendarFormat: _calendarFormat,
                          selectedDayPredicate: (day) {
                            return isSameDay(_selectedDay, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            if (!isSameDay(_selectedDay, focusedDay)) {
                              setState(() {
                                _selectedDay = selectedDay;
                                _focusedDay = focusedDay;
                              });
                            }
                          },
                          onFormatChanged: (format) {
                            if (_calendarFormat != format) {
                              // Call `setState()` when updating calendar format
                              setState(() {
                                _calendarFormat = format;
                              });
                            }
                          },
                          onPageChanged: (focusedDay) {
                            _focusedDay = focusedDay;
                          },
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
                          trailing:
                              Icon(Icons.star_border, color: Colors.amber),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => BookAppointment());
                          },
                          child: Center(
                            child: Container(
                              height: 4.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: btngreen),
                              alignment: Alignment.center,
                              child: Text("Appointment",
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
            Positioned(
              top: 190.0, // (background container size) - (circle height / 2)
              child: Container(
                height: 18.h,
                width: 75.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: Color(0xffECECEC),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Dr. John Doe",
                      style: TxtStyleG,
                    ),
                    Text(
                      "Heart Surgeon",
                      style: TextStyle(color: btngreen),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: btngreen,
                        ),
                        Text(
                          "National hospital",
                          style: TextStyle(color: btngreen),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/chatt.png",
                            width: 25.w,
                            height: 5.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/calll.png",
                            width: 25.w,
                            height: 5.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
