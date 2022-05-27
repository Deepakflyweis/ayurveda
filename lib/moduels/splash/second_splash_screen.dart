
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/moduels/user/login_screen.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 

class SecondSplashScreen extends StatelessWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteclr,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              Image.asset('assets/images/logo.png',
              height: 35.h,
                width: 100.w,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 2.h,),
             Center(
               child: AutoSizeText(
                   'Welcome to Shathayu Ayurveda Wellness promoter ',  
                                  style: TxtStyleL,                 
               ),
             ),
             Center(
               child: AutoSizeText(
                   ' Since 1901',
                 style: TxtStyleL,                  
               ),
             ),
              SizedBox(height: 5.h,),
              InkWell(
                onTap: (){
                  Get.offAll(()=> LoginScreen());
                },

                child: Container(
                  height: 5.h,
                  width: 45.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: btngreen,
                  ),
                  child: Text('Next',style: TextStyle(color: whiteclr,fontSize: 14,fontWeight: FontWeight.w700)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
