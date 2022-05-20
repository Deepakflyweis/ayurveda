
import 'package:ayurveda/moduels/chat_module/chat_home_screen.dart';
import 'package:ayurveda/moduels/contact_us/contact_us.dart';
import 'package:ayurveda/moduels/coupon/coupon_screen.dart';
import 'package:ayurveda/moduels/f_a_q/faq_screen.dart';
import 'package:ayurveda/moduels/help_support/help_support.dart';
import 'package:ayurveda/moduels/lab_test/lab_test_all.dart';
import 'package:ayurveda/moduels/my_order/my_order_index.dart';
import 'package:ayurveda/moduels/packages/diabetes_checkup_screen.dart';
import 'package:ayurveda/moduels/profile/edit_profile.dart';
import 'package:ayurveda/moduels/profile/profile_home.dart';
import 'package:ayurveda/moduels/wallet/wallet_screen.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';

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
        home: LabTest
        (),
      );
    }
    ));
  }
}




