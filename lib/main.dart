import 'package:ayurveda/moduels/digonistics/digonistics_screen.dart';
import 'package:ayurveda/moduels/home_module/home_screen.dart';
import 'package:ayurveda/moduels/home_module/profile_menu.dart';
import 'package:ayurveda/moduels/location_module/location_screen.dart';
import 'package:ayurveda/moduels/medicine/medicine_home.dart';
import 'package:ayurveda/moduels/splash/splash_screen1.dart';
import 'package:ayurveda/moduels/user/otp_screen.dart';
import 'package:ayurveda/moduels/user/personal_info.dart';
import 'package:ayurveda/moduels/user/signup_screen.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Ayurveda',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MedicineHome(),
      );
    }
    ));
  }
}




