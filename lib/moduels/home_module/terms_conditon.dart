
 import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class TermsConditon extends StatelessWidget {
  const TermsConditon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppbar(title: "Terms & Conditon"),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
          style: TxtStyleL, maxLines: 12,),
      ),
    ));
  }
    
  }
 