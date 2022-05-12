
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class LoyalityPoints extends StatelessWidget {
  const LoyalityPoints({Key? key}) : super(key: key);

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
          title: Text('Loayality Points',style: TxtStyleAW),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Loayality Points',style: TxtStyleN,)),
              SizedBox(height: 1.h,),
              Container(
                height: 20.h,
                width: 85.w,
                padding: EdgeInsets.only(left: 20,right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: loyclr,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 3.h,),
                    const Align(
                        child: Text('Total'),
                    alignment: Alignment.centerLeft,
                    ),
                     Align(
                        child: Text('1500 Points',style: TxtStyleB,),
                    alignment: Alignment.centerLeft,
                    ),

                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Total Shares'),
                        Text('Total Appointments'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('200'),
                        Text('200'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h,),

              GestureDetector(
                onTap: (){

                },
                child: Image.asset('assets/images/redeem.png',
                 width: 80.w,
                height: 5.h,fit: BoxFit.fill),
              ),

              Divider(thickness: 2,color: hinttxtclr,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('How it works',style: TxtStyleN,)),
              AutoSizeText(" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam, tincidunt commodo eu arcu. Pharetra pharetra tincidunt morbi duis dictumst semper aenean feugiat interdum. A, in commodo lacus varius eget. Posuere neque, vitae, faucibus ac ut enim. Mus vel sit non id ac mi vitae, interdum eros. Faucibus at ultrices dis dui, lorem elit, elit."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam, tincidunt commodo eu arcu. Pharetra pharetra tincidunt morbi duis dictumst semper aenean feugiat interdum. A, in commodo lacus varius eget. Posuere neque, vitae, faucibus ac ut enim. Mus vel sit non id ac mi vitae, interdum eros. Faucibus at ultrices dis dui, lorem elit, elit."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam, tincidunt commodo eu arcu. Pharetra pharetra tincidunt morbi duis dictumst semper aenean feugiat interdum. A, in commodo lacus varius eget. Posuere neque, vitae, faucibus ac ut enim. Mus vel sit non id ac mi vitae, interdum eros. Faucibus at ultrices dis dui, lorem elit, elit.",

                style: hintTxtStyle,maxLines: 20,overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
      ),
    );
  }
}
