
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MembershipHome extends StatefulWidget {
  const MembershipHome({Key? key}) : super(key: key);

  @override
  State<MembershipHome> createState() => _MembershipHomeState();
}

class _MembershipHomeState extends State<MembershipHome> {
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('My Membership cards',style: TxtStyleN,)),

              TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'You have not any membership cards yet',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: blckclr,width: 3),
                  )
                ),
              ),
              SizedBox(height: 2.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Membership cards we provide',style: TxtStyleN,)),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 25.h,
                width: 90.w,
                child: Stack(
                  children: [
                    Container(
                      height: 25.h,
                      width: 90.w,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: memcardclr,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Wellness Card',style: TxtStyleAW,),
                          Text('Family',style: TextStyle(color: hinttxtclr,fontSize: 16),),
                          SizedBox(height: 2.h,),
                          Text('50 Abhyana + Swedana',style: TextStyle(color: whiteclr,fontSize: 16),),
                          SizedBox(height: 5.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('12 Months ',style: TextStyle(color: whiteclr,fontSize: 16),),
                              Text('₹66000',style: TextStyle(color: whiteclr,fontSize: 16),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Validity',style: TextStyle(color: hinttxtclr,fontSize: 16 ),),
                              Text('Price',style: TextStyle(color: hinttxtclr,fontSize: 16),),
                            ],
                          ),
                        ],
                      ),

                    ),
                    Positioned(
                      top: -50,
                      right: -55,
                      child: Image.asset('assets/images/cir.png',
                        width: 25.h,
                        fit: BoxFit.fill,),
                    )

                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
