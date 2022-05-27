import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/moduels/consult/consult_home.dart';
import 'package:ayurveda/moduels/digonistics/digonistics_screen.dart';
import 'package:ayurveda/moduels/home_module/profile_menu.dart';
import 'package:ayurveda/moduels/lab_test/lab_test_all.dart';
import 'package:ayurveda/moduels/medicine/medicine_home.dart';
import 'package:ayurveda/moduels/medicine/prescription_screen.dart';
import 'package:ayurveda/moduels/membership/membership_home.dart';
import 'package:ayurveda/moduels/services/diseases_we_treat.dart';
import 'package:ayurveda/moduels/services/packages_screen.dart';
import 'package:ayurveda/moduels/services/services_provide.dart';
import 'package:ayurveda/moduels/services/threapy.dart';
import 'package:ayurveda/moduels/services/treatment_provide.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _search = TextEditingController();

  List _mycatList = [
    'assets/images/serv.png',
    'assets/images/ther.png',
    'assets/images/dis.png',
    'assets/images/pack.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: HomeProfileMenu(),
        appBar: AppBar(
          backgroundColor: btngreen,
          title: Row(
            children:const [
                Icon(
                Icons.location_on_outlined,
                color: whiteclr,
              ),
                Text(
                'Mayur Vihar, New Delhi',
                style: TextStyle(color: whiteclr, fontSize: 14),
              ),
                Icon(
                Icons.keyboard_arrow_down_outlined,
                color: whiteclr,
              ),
              // Spacer(),
              // Builder(
              //   builder: (context) => IconButton(
              //     onPressed: () => Scaffold.of(context).openDrawer(),
              //     icon: const Icon(
              //       Icons.menu,
              //       size: 25,
              //       color: whiteclr,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),

              ///Search
              SizedBox(
                width: 90.w,
                child: Stack(
                  children: [
                    Container(
                      height: 6.h,
                      width: 90.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: whiteclr,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(
                                2.0,
                                2.0,
                              ),
                            )
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              controller: _search,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Field can\'t be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                constraints: BoxConstraints(maxWidth: 100.w),
                                contentPadding: EdgeInsets.all(15),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                    color: hinttxtclr, size: 25),
                                hintText: "Search Clinic",
                                hintStyle: hintTxtStyle,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 25.w,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  // border: Border.all(width: 1.0,color: Colors.black12,),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: btngreen,
                                  boxShadow: [
                                    BoxShadow(
                                      color: btngreen,
                                      offset: Offset(
                                        1.0,
                                        1.0,
                                      ),
                                    )
                                  ]),
                              child: const Text(
                                'Search',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: whiteclr,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

              Divider(thickness: 0.5, color: blckclr),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => MedicineHome());
                    },
                    child: Image.asset(
                      'assets/images/med.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => TreatmentProvide());
                    },
                    child: Image.asset(
                      'assets/images/treatment.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ConsultHome());
                    },
                    child: Image.asset(
                      'assets/images/cons.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Categories',
                    style: TxtStyleG,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => ServicesProvide());
                              },
                              child: SizedBox(
                                height: 20.h,
                                width: 30.w,
                                child: Image.asset(
                                  'assets/images/serv.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => ThreapyScreen());
                              },
                              child: SizedBox(
                                height: 20.h,
                                width: 30.w,
                                child: Image.asset(
                                  'assets/images/ther.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => DiseasesWeTreat());
                              },
                              child: SizedBox(
                                height: 20.h,
                                width: 30.w,
                                child: Image.asset(
                                  'assets/images/dis.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => PackageScreen());
                              },
                              child: SizedBox(
                                height: 20.h,
                                width: 30.w,
                                child: Image.asset(
                                  'assets/images/pack.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                            // GestureDetector(
                            //     onTap: () {

                            //       Get.to(() => ServicesProvide());
                            //     },
                            //     // child: Image.asset(
                            //     //   _mycatList[index],
                            //     //   fit: BoxFit.fill,
                            //     // )
                            //     ),
                          ],
                        ),
                      );
                    }),
              ),

              SizedBox(
                height: 1.h,
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Top Specialist',
                      style: TxtStyleG,
                    ),
                  ),
                  Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Text(
                      'View all',
                      style: TextStyle(
                          color: redtxtclr,
                          decoration: TextDecoration.underline,
                          decorationColor: redtxtclr,
                          decorationThickness: 2.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),

              ///Top Specialist
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/docs.png',
                                height: 15.h,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Doctor name',
                                style: TxtStyleL,
                              ),
                              Text(
                                'Specialist',
                                style: hintTxtStyle,
                              ),
                            ],
                          ));
                    }),
              ),

              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Lab Test & Health Check-up',
                      style: TxtStyleG,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => LabTest());
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(
                            color: redtxtclr,
                            decoration: TextDecoration.underline,
                            decorationColor: redtxtclr,
                            decorationThickness: 2.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => DigonisticsScreen());
                          },
                          child: Image.asset(
                            'assets/images/treatment.png',
                            height: 20.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),

              SizedBox(
                height: 1.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Testimonials',
                    style: TxtStyleG,
                  ),
                ),
              ),            

              SizedBox(
                height: 15.h,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 20.h,
                          width: 40.w,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Image.network(
                                "src",
                                height: 3.h,
                                width: 5.w,
                                fit: BoxFit.fill,
                                errorBuilder: (context, Object, StackTrace) =>
                                    Center(
                                  child: Image.asset("assets/images/doc.png",
                                      height: 5.h,
                                      width: 7.w,
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                    "Lorem ipsum dolor sit amet, at volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.",
                                    style: TxtStyleL,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
