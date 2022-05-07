

import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';

class CustomTxtfield extends StatelessWidget {

  CustomTxtfield({ required this.controller,
    required this.label, Key? key})
      : super(key: key);

  String label;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 85.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          // border: Border.all(width: 1.0,color: Colors.black12,),
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
        controller: controller,
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
          hintText: label,
          hintStyle: hintTxtStyle,
        ),
      ),
    );
  }
}