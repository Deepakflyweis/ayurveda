
import 'dart:async';

import 'package:ayurveda/moduels/user/login_screen.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
 

class SplashScreen extends StatefulWidget {
   SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    timer = Timer(const Duration(seconds: 4), (){
      Get.offAll(()=> LoginScreen());
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteclr,
      body: SafeArea(        
        child: Center(
          child: Image.asset("assets/images/logo1.png",
        
          fit: BoxFit.cover,
             ),
        ),
      ),
    );
  }
}
