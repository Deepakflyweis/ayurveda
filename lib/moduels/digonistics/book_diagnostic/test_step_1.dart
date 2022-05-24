import 'package:ayurveda/moduels/digonistics/book_diagnostic/test_step_2.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/textfield.dart';

class TestStep1 extends StatelessWidget {
  TestStep1({Key? key}) : super(key: key);

  final _patientName = TextEditingController();
  final _dob = TextEditingController();
  final _mob = TextEditingController();
  final _email = TextEditingController();

  var selectedRating = const RangeValues(20, 100);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Covid-19 RTPCR"),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 15, top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(20),
                  child: const LinearProgressIndicator(
                    value: 0.25,
                    valueColor: AlwaysStoppedAnimation<Color>(btngreen),
                    backgroundColor: Colors.grey,
                  )),
              const Center(
                  child: Text(
                "Step 1/4",
                style: TextStyle(color: Colors.blue),
              )),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: Container(
                  height: 15.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Image.network(
                    "src",
                    fit: BoxFit.fill,
                    errorBuilder: (context, Object, StackTrace) => Center(
                        child: Image.asset("assets/images/covi.png",
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Reports will be created on patient’s name whose sample sample will be collected by our doctors.Reports will be sent on patient or guardians’s email",
                  style: TxtStyleL,
                  maxLines: 3,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Patient Name',
                style: TxtStyleN,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTxtfield(controller: _patientName, label: ''),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Date Of Birth',
                style: TxtStyleN,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTxtfield(controller: _dob, label: ''),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Mobile Number',
                style: TxtStyleN,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTxtfield(controller: _mob, label: ''),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Email ',
                style: TxtStyleN,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomTxtfield(controller: _email, label: ''),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {

                  Get.to(() => TestStep2());

                },
                child: Center(
                  child: Container(
                    height: 5.h,
                    width: 45.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: btngreen,
                    ),
                    child: Text('Next',
                        style: TextStyle(
                            color: whiteclr,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
            ],
          ),
        ),
      ),
    );
  }
}
