

import 'package:ayurveda/utils/packages_used/essential.dart';

class EditProfileController extends GetxController{

  GlobalKey<FormState> editProfileForm = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();
}