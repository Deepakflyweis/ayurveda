import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/controllers/user/otp_verify_controller.dart';
import 'package:ayurveda/moduels/home_module/nav_bar_index.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/custom_button.dart';
import 'package:ayurveda/widgets/otp_input.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  VerifyController _verifyController = Get.put(VerifyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteclr,
        appBar: AppBar(
          backgroundColor: whiteclr,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: blckclr,
              )),
        ),
        body: Form(
          key: _verifyController.otpkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 4.h),
                Image.asset('assets/images/otpimg.png',
                    height: 20.h, fit: BoxFit.cover),
                SizedBox(
                  height: 2.h,
                ),
                AutoSizeText(
                    "Enter the OTP code from the phone we just sent you",
                    style: TxtStyleN),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 4; i++)
                      OtpInput(
                        validator: _verifyController.otpvalidator,
                        controller: _verifyController.otp[i],
                        autoFocus: i == 0 ? true : false,
                      )
                  ],
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Didn't receive OTP Code ! ",
                      style: hintTxtStyle,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Resend', style: TxtStyleN),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                CustomButton(
                  onPressed: () {
                    Get.offAll(() => NavBarIndex(0));
                  },
                  text: 'Submit',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
