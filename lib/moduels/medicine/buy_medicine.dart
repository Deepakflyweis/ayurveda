
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BuyMedicine extends StatefulWidget {
  const BuyMedicine({Key? key}) : super(key: key);

  @override
  State<BuyMedicine> createState() => _BuyMedicineState();
}

class _BuyMedicineState extends State<BuyMedicine> {
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
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,color: blckclr,size: 25),
                  SizedBox(width: 2.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mayur Vihar, New Delhi',style: TxtStyleN),
                      Text('lorem ipsum dolor sit dummy',style: TextStyle(color: blckclr,fontSize: 12),),
                    ],
                  ),
                  Spacer(),
                  Text('Change',style: TextStyle(color: Colors.blue[800],fontSize: 15,fontWeight: FontWeight.w600),),

                ],
              ),
              SizedBox(height: 2.h,),
              Divider(thickness: 5.0,color: divclr),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,color: blckclr,size: 25),
                  SizedBox(width: 2.w,),
                  Text('Mayur Vihar, New Delhi',style: TxtStyleN),

                  Spacer(),
                Icon(Icons.arrow_forward_ios,color: blckclr,size: 20),

                ],
              ),
              SizedBox(height: 2.h,),
              Divider(thickness: 5.0,color: divclr),
              SizedBox(height: 2.h,),

            ],
          ),
        ),
      ),
    );
  }
}
