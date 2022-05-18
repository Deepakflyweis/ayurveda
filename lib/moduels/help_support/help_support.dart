import 'package:ayurveda/controllers/help_support_controller.dart';
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
          padding: EdgeInsets.all(10),
          child: Column(
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
              Text("  Enter your query",style: TxtStyleN,)
            ],
          ),
        ),
      ),
    );
  }
}
