
import 'dart:async';

import 'package:ayurveda/moduels/splash/second_splash_screen.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    timer = Timer(Duration(seconds: 5), (){
      Get.offAll(()=> SecondSplashScreen());
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
      body: SafeArea(
        child: Center(
          child: Image.asset("assets/images/logo.png",
            height: 50.h,),
        ),
      ),
    );
  }
}
