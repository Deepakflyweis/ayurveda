
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/controllers/user/login_controller.dart';
import 'package:ayurveda/moduels/user/otp_screen.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/custom_button.dart';
 

class LoginScreen extends StatefulWidget {
    LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _loginController.loginFormkey,
            child: Column(
              children: [
                SizedBox(height: 8.h,),
                Image.asset('assets/images/logo.png',
                  height: 30.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
                Text('Signin with phone number',style: TxtStyleN,),
                SizedBox(height: 2.h,),
                Container(
                  height: 6.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.2,color: blckclr),
                  ),
                  child: TextFormField(
                    controller: _loginController.mobNo,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return 'Field can\t be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                      hintStyle: hintTxtStyle,

                      prefixText: '+91  ',
                      prefixStyle: const TextStyle(
                        fontWeight: FontWeight.bold,color: blckclr
                      )
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                CustomButton(
                  onPressed: (){
                    Get.offAll(() => VerifyOtpScreen());
                  },
                    text: 'Continue',
                ),
                SizedBox(height: 2.h,),
                Text("We'll send OTP for verification",style: TxtStyleN,),
                SizedBox(height: 2.h,),
                Text("Or",style: TxtStyleN,),
                SizedBox(height: 2.h,),
                SizedBox(
                  height: 7.h,
                  width: 88.w,
                  child: Image.asset('assets/images/gg.png',
                    fit: BoxFit.cover,
                    height: 6.h,
                    width: 85.w,
                  ),
                ),
                SizedBox(height: 2.h,),
                Image.asset('assets/images/fb.png',
                  fit: BoxFit.fitWidth,
                  height: 6.h,
                  width: 85.w,
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account? ',style: TxtStyleN,),
                    TextButton(
                      onPressed: () {

                      },
                      child: const Text('Sign Up',
                        style: TextStyle(
                        fontSize: 17,
                        color: btngreen,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),

                  ],
                ),
                SizedBox(height: 8.h,),

                AutoSizeText(
                  "By signing up you have agreed to our TERMS OF USE and ",
                  style: hintTxtStyle,
                  maxLines: 1,
                ),
                Text('PRIVACY POLICY',style: hintTxtStyle,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
