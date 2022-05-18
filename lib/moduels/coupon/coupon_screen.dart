import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:flutter/material.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppbar(title: "Coupon Code"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
        SizedBox(height: 2.h,),

        GridView.builder(
                    gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0
                    ),
                    itemCount: 9,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return InkWell(
                        onTap: (){

                        },
                        child: Container(
                          width: 30.w,
                          height: 20.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteclr,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow (
                                  color: Colors.grey.shade300,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  offset: Offset(3.0,3.0)
                                  )
                              ]
                              ),
                          child:  Text("Tap to reveal", maxLines: 2,style: TextStyle(color: blckclr,fontSize: 15,fontWeight: FontWeight.w500),)
                        ),
                      );
                    }),
              
      ],)),
    ));
  }
}
