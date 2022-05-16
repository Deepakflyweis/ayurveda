
import 'package:ayurveda/moduels/my_order/my_order_index.dart';
import 'package:ayurveda/moduels/packages/diabetes_checkup_screen.dart';
import 'package:ayurveda/moduels/profile/profile_home.dart';
import 'package:ayurveda/moduels/wallet/wallet_screen.dart';
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
        title: 'Shathayu',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProfileScreen(),
      );
    }
    ));
  }
}




