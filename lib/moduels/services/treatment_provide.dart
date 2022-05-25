import 'package:ayurveda/moduels/services/hospital_fo_treat.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class TreatmentProvide extends StatefulWidget {
  const TreatmentProvide({Key? key}) : super(key: key);

  @override
  State<TreatmentProvide> createState() => _TreatmentProvideState();
}

class _TreatmentProvideState extends State<TreatmentProvide> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Treatment"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Treatment we provide",
                  style: TxtStyleB,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(              
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                       crossAxisSpacing: 6,
                        mainAxisSpacing: 6),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => HospitalsForTreat());
                      },
                      child: Container(
                        height: 50.h,                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: SizedBox(
                          height: 45.h,
                          width: 25.w,
                          child: Image.network(
                            "src",
                            fit: BoxFit.fill,
                            errorBuilder: (context, Object, StackTrace) =>
                                Center(
                                    child: Image.asset("assets/images/tp.png",
                                     
                                        fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
