
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:flutter/cupertino.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: CustomAppbar(title: 'Edit Profile',),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
