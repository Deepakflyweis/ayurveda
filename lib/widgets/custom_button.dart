

import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';

class CustomButton extends StatelessWidget {
  var onPressed;
  var text;

  CustomButton
      ({Key? key,@required this.onPressed, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
        textStyle: TextStyle(color: whiteclr,fontWeight: FontWeight.w700,fontSize: 16),
        child: Container(
          height: 6.h,
          width: 85.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: btngreen,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(text) ,
        )

    );
  }
}