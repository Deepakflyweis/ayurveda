

import 'package:ayurveda/utils/packages_used/essential.dart';

class SignupController extends GetxController{

  GlobalKey<FormState> signUpFormkey = GlobalKey<FormState>();
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pswd = TextEditingController();
  TextEditingController confirmPswd = TextEditingController();
}