import 'package:ayurveda/moduels/digonistics/book_diagnostic/test_step_1.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class DiagnosticTestName extends StatelessWidget {
  const DiagnosticTestName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppbar(title: "Covid-19 RTPCR"),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt sit lorem vitae facilisis enim.",
                    style: hintTxtStyle,
                    maxLines: 2),
                SizedBox(
                  height: 2.h,
                ),
                const Divider(
                  thickness: 0.5,
                  color: hinttxtclr,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Our partner labs",
                  style: TxtStyleB,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt dignissim eu, rutrum",
                  style: hintTxtStyle,
                  maxLines: 2,
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 20.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 20.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Image.network(
                          "src",
                          fit: BoxFit.fill,
                          errorBuilder: (context, Object, StackTrace) => Center(
                              child: Image.asset("assets/images/lab_t.png",
                                  fit: BoxFit.fill)),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                const Divider(
                  thickness: 0.5,
                  color: hinttxtclr,
                ),
                ListTile(
                  visualDensity: const VisualDensity(
                    vertical: -4,
                  ),
                  leading: const Icon(Icons.medical_services_outlined,
                      color: hinttxtclr),
                  title: Text("E-Reports in 24 hour ", style: TxtStyleL),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  leading: const Icon(Icons.home, color: hinttxtclr),
                  title: Text("Home sample collection", style: TxtStyleL),
                ),
                const Divider(
                  thickness: 0.5,
                  color: hinttxtclr,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Choose test preference",
                  style: TxtStyleB,
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 25.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Column(
                          children: [
                            Container(
                              height: 15.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Image.network(
                                "src",
                                fit: BoxFit.fill,
                                errorBuilder: (context, Object, StackTrace) =>
                                    Center(
                                        child: Image.asset(
                                            "assets/images/fam.png",
                                            fit: BoxFit.fill)),
                              ),
                            ),
                            Text(
                              "Individual",
                              style: TxtStyleN,
                            ),
                            Text(
                              "₹ 500/-",
                              style: TxtStyleL,
                            ),
                            InkWell(
                              onTap: () {

                                Get.to(() => TestStep1());
                                
                              },
                              child: Center(
                                child: Container(
                                  height: 3.h,
                                  width: 20.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: btngreen,
                                  ),
                                  child: Text('Book',
                                      style: TextStyle(
                                          color: whiteclr,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
