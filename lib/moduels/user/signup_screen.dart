



import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/controllers/user/signup_controller.dart';
import 'package:ayurveda/moduels/user/login_screen.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
   SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignupController _signupController = Get.put(SignupController());

      bool _showPassword = false;
      bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _signupController.signUpFormkey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 8.h,),
                  Image.asset('assets/images/logo.png',
                    height: 20.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),

                  SizedBox(height: 2.h,),

                  ///fName
                  TextFormField(
                    controller: _signupController.fName,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return 'Field can\t be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                         borderSide: BorderSide(color: blckclr, )
                      ),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: 'First Name',
                        hintStyle: hintTxtStyle,
                    ),
                  ),

                  SizedBox(height: 2.h,),

                 ///lName
                  TextFormField(
                    controller: _signupController.lName,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return 'Field can\t be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: blckclr, )
                      ),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: 'Last Name',
                        hintStyle: hintTxtStyle,
                    ),
                  ),

                  SizedBox(height: 2.h,),

                  ///Email
                  TextFormField(
                    controller: _signupController.email,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return 'Field can\t be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: blckclr, )
                      ),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: 'Last Name',
                        hintStyle: hintTxtStyle,
                    ),
                  ),

                  SizedBox(height: 2.h,),

                  ///create password
                  TextFormField(
                    controller: _signupController.pswd,
                    keyboardType: TextInputType.text,
                    obscureText: !this._showPassword,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return 'Field can\t be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: blckclr, )
                      ),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: 'Create Password',
                        hintStyle: hintTxtStyle,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child:
                        new Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h,),

                  ///Confirm Password
                  TextFormField(
                    controller: _signupController.pswd,
                    keyboardType: TextInputType.text,
                    obscureText: !this._showPassword,
                    validator: (value){
                      if(value!.isNotEmpty){
                        return 'Field can\t be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: blckclr, )
                      ),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                        hintStyle: hintTxtStyle,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: new Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                  ),
                 const Divider(color: blckclr,indent: 10,endIndent: 10),
                  SizedBox(height: 3.h,),
                  CustomButton(
                    onPressed: (){
                      // Get.offAll(() => VerifyOtpScreen());
                    },
                    text: 'Create Account',
                  ),

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
                      Text('Already have an account? ',style: TxtStyleN,),
                      TextButton(
                        onPressed: () {
                          Get.offAll(() => LoginScreen);
                        },
                        child: const Text('Sign In',
                          style: TextStyle(
                            fontSize: 17,
                            color: btngreen,
                            fontWeight: FontWeight.w700,
                          ),),
                      ),

                    ],
                  ),
                  SizedBox(height: 5.h,),

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
      ),
    );
  }
}
