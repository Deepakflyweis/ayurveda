import 'package:ayurveda/controllers/help_support_controller.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/textfield.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HelpSupport extends StatelessWidget {
  HelpSupport({Key? key}) : super(key: key);

  HelpSupportController helpSupportController =
      Get.put(HelpSupportController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Help & Support"),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                "  Name",
                style: TxtStyleN,
              ),
              SizedBox(
                height: 1.h,
              ),
              CustomTxtfield(
                  controller: helpSupportController.name, label: " "),
               SizedBox(
                height: 2.h,
              ),
                   Text(
                "  Email Address",
                style: TxtStyleN,
              ),
              SizedBox(
                height: 1.h,
              ),
               CustomTxtfield(
                 controller: helpSupportController.email,
                   label: " "),
                    SizedBox(
                height: 2.h,
              ),
                   Text(
                "  Contact No.",
                style: TxtStyleN,
              ),
              SizedBox(
                height: 1.h,
              ),
               CustomTxtfield(
                 controller: helpSupportController.email,
                   label: " "),
                   SizedBox(
                height: 2.h,
              ),
              Text("  Enter your query",style: TxtStyleN,),
              SizedBox(height: 1.h,),
              Container(
                    height: 30.h,
                    width: 88.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: whiteclr,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                          offset: Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 2.0,
                          spreadRadius: 2.0,
                      )]
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: helpSupportController.query,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxWidth: 100.w),
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText:  " ",
                        hintStyle: hintTxtStyle,
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 4.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: btngreen,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Submit", 
                        style: TextStyle(fontWeight: FontWeight.w500,color: whiteclr,fontSize: 15),
                        ), 
                        ),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
