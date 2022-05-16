
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';

class PackageDescription extends StatelessWidget {
  const PackageDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 2.h,),
        Text(
         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna. Ut turpis nunc, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna. Ut turpis nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna. Ut turpis nunc, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna. Ut turpis nunc.",
       style: hintTxtStyle,),
    ]
    );
  }
}
