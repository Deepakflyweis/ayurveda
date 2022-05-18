
import 'package:ayurveda/controllers/edit_profile_controller.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';

class EditProfile extends StatelessWidget {
    EditProfile({Key? key}) : super(key: key);

  EditProfileController _editProfileController = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: CustomAppbar(title: 'Edit Profile',),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _editProfileController.editProfileForm,
            child: Column(
              children: [
                SizedBox(height: 2.h,),
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 6.h,
                        backgroundColor: blckclr,
                        child: Image.asset('assets/images/profile.png',fit: BoxFit.fill),
                      ),
                      const Positioned(
                         bottom: 0,
                          left: 40,
                          child: Icon(Icons.camera_alt_outlined,size: 25,color: whiteclr,)
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
                Divider(thickness: 1.5,color: hinttxtclr,),
                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("   First Name*",style: TxtStyleB ,)),
                SizedBox(height: 1.h,),
                CustomTxtfield(
                  controller: _editProfileController.firstName,
                  label: " User Name ",
                ),
                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("   Last Name*",style: TxtStyleB ,)),
                SizedBox(height: 1.h,),
                CustomTxtfield(
                  controller: _editProfileController.lastName,
                  label: " Surname ",
                ),
                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("   Email",style: TxtStyleB ,)),
                SizedBox(height: 1.h,),
                CustomTxtfield(
                  controller: _editProfileController.lastName,
                  label: "   ",
                ),
                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("   Age",style: TxtStyleB ,)),
                SizedBox(height: 1.h,),
                CustomTxtfield(
                  controller: _editProfileController.lastName,
                  label: "   ",
                ),
                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("   Weight",style: TxtStyleB ,)),
                SizedBox(height: 1.h,),
                CustomTxtfield(
                  controller: _editProfileController.lastName,
                  label: "   ",
                ),
                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("   Height",style: TxtStyleB ,)),
                SizedBox(height: 1.h,),
                CustomTxtfield(
                  controller: _editProfileController.lastName,
                  label: "   ",
                ),
                SizedBox(height: 5.h,),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    height: 5.h,
                    width: 30.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: btngreen,
                    ),
                    child: Text(
                        "Submit",
                        style: TextStyle(color: whiteclr,fontWeight: FontWeight.w600)),
                  ),
                ),
                SizedBox(height: 3.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
