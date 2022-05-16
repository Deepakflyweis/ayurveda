
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  String title;

    CustomAppbar({Key? key,required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size(double.infinity, 7.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      backgroundColor: btngreen,
      leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back,size: 25,color: whiteclr,)
      ),
      title: Text(title,style: TxtStyleAW),
    );
  }


}
