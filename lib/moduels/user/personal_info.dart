
import 'package:ayurveda/controllers/user/personal_info_controller.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/textfield.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {

  PersonalInfoController _infoController = Get.put(PersonalInfoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _infoController.personalFormKey,
            child: Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.h,),
                  Image.asset('assets/images/logo.png',
                    height: 20.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5.h,),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                  child: Text(
                      'Tell us about yourself',
                  style: TextStyle(
                    color: btngreen,fontSize: 25,fontWeight: FontWeight.bold)
                  ),),
                  SizedBox(height: 3.h,),
                  Text('First Name*',style: TxtStyleN,),
                  SizedBox(height: 2.h,),

                  ///Fname
                  CustomTxtfield(
                      controller: _infoController.fname,
                      label: 'User Name'),

                  SizedBox(height: 2.h,),
                  Text('Last Name*',style: TxtStyleN,),
                  SizedBox(height: 2.h,),

                  ///Surname
                  CustomTxtfield(
                      controller: _infoController.lname,
                      label: 'Surname'),

                  SizedBox(height: 2.h,),

                  Row(
                    children: [
                      Text('Emergency Phone No.',style: TxtStyleN,),
                      const Text('( to inform family )',style: TextStyle(
                        fontSize: 13,
                        color: redtxtclr,
                        fontWeight: FontWeight.w600,
                      )),
                    ],
                  ),
                  SizedBox(height: 2.h,),

                  ///Emergency Phone No.
                  CustomTxtfield(
                      controller: _infoController.phone,
                      label: ' '),

                  SizedBox(height: 2.h,),
                  Text('Age',style: TxtStyleN,),
                  SizedBox(height: 2.h,),

                  ///Age
                  CustomTxtfield(
                      controller: _infoController.age,
                      label: ''),

                  SizedBox(height: 2.h,),
                  Text('Weight',style: TxtStyleN,),
                  SizedBox(height: 2.h,),

                  ///Weight
                  CustomTxtfield(
                      controller: _infoController.weight,
                      label: ''),

                  SizedBox(height: 2.h,),
                  Text('Blood Group',style: TxtStyleN,),
                  SizedBox(height: 2.h,),

                  ///Blood Group
                  CustomTxtfield(
                      controller: _infoController.blood,
                      label: ''),

                  SizedBox(height:
                  5.h,),

                  InkWell(
                    onTap: (){
                      // Get.offAll(()=> LoginScreen());
                    },

                    child: Center(
                      child: Container(
                        height: 6.h,
                        width: 45.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: btngreen,
                        ),
                        child: Text('Continue',style: TextStyle(color: whiteclr,fontSize: 15,fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),




                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
