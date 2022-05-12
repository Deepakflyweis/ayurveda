
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';

class WellnessDetails extends StatelessWidget {
  const WellnessDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          elevation: 5,
          backgroundColor: btngreen,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back,size: 25,color: whiteclr,)
          ),
          title: Text('Membership',style: TxtStyleAW),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Wellness Card  ',style: TxtStyleN),
                  Text('   Family',style: TxtStyleL),

                ],
              ),
              AutoSizeText(" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam, tincidunt commodo eu arcu. Pharetra pharetra tincidunt morbi duis dictumst semper aenean feugiat interdum. A, in commodo lacus varius eget. Posuere neque, vitae, faucibus ac ut enim. Mus vel sit non id ac mi vitae, interdum eros. Faucibus at ultrices dis dui, lorem elit, elit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam, tincidunt commodo eu arcu. Pharetra pharetra tincidunt morbi duis dictumst semper aenean feugiat interdum. A, in commodo lacus varius eget. Posuere neque, vitae, faucibus ac ut enim. Mus vel sit non id ac mi vitae, interdum eros. Faucibus at ultrices dis dui, lorem elit, elit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam, tincidunt commodo eu arcu. Pharetra pharetra tincidunt morbi duis dictumst semper aenean feugiat interdum. A, in commodo lacus varius eget. Posuere neque, vitae, faucibus ac ut enim. Mus vel sit non id ac mi vitae, interdum eros. Faucibus at ultrices dis dui, lorem elit, elit.",

              style: hintTxtStyle,maxLines: 20,overflow: TextOverflow.ellipsis,),

              SizedBox(height: 5.h,),
              InkWell(
                onTap: () {
                  // Get.to(() => MedPlacedSucessfully());
                },
                child: Container(
                  width: 25.w,
                  height: 4.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: boxgreenclr,
                  ),
                  child: Text('Buy',style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
