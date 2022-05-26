import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/moduels/services/services_hospital_details.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class HospitalsForTreat extends StatefulWidget {
  const HospitalsForTreat({Key? key}) : super(key: key);

  @override
  State<HospitalsForTreat> createState() => _HospitalsForTreatState();
}

class _HospitalsForTreatState extends State<HospitalsForTreat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: ""),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hospitals for " + "Treatment",
                  style: TxtStyleB,
                ),
              ),
              SizedBox(
                width: 95.w,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => ServicesHospitalDetail());
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: whiteclr,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey, spreadRadius: 2)
                                  ]),
                              width: 90.w,
                              height: 20.h,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30.w,
                                    height: 25.h,
                                    child: Image.asset('assets/images/hosp.png',
                                        fit: BoxFit.cover),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  SizedBox(
                                    width: 45.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Text(
                                          'Shathayu Ayurveda',
                                          style: TxtStyleN,
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        AutoSizeText(
                                          "Lorem ipsum dolor sit amet Lorem ipsum dolor sit ametLorem ipsum dolor sit amet ",
                                          style: TxtStyleL,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 4.h,
                                        width: 12.w,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.green,
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
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: blckclr,
                                          ),
                                          Text(' 2 km  '),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
