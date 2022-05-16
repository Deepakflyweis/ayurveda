
import 'dart:math';

import 'package:ayurveda/moduels/packages/package_details.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class DiabetesCheckupScreen extends StatefulWidget {
  const DiabetesCheckupScreen({Key? key}) : super(key: key);

  @override
  State<DiabetesCheckupScreen> createState() => _DiabetesCheckupScreenState();
}

class _DiabetesCheckupScreenState extends State<DiabetesCheckupScreen> {


  int currtpage = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }


  var gradients = [
    const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xFFDB00FF),Color(0xff008000), Color(0xff336744),
      ]
    ),
    const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFFFCE31),Color(0xff008000), Color(0xff336744),
        ]
    ),
    const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFFF0000),Color(0xff008000), Color(0xff336744),
        ]
    ),
    const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFDB00FF),Color(0xff008000), Color(0xff336744),
        ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: 'Diabetes Checkup',),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 2.h,),

              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                     scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: gradients[Random().nextInt(gradients.length)]
                          ),
                          width: 85.w,
                          height: 20.h,
                          alignment: Alignment.center,
                          child: const Text("BANNER",style: TextStyle(
                            fontWeight: FontWeight.bold,color: whiteclr,fontSize: 20
                          )),
                        ),
                      );
                }
                ),
              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      gradients.length, (index) => buildDot(index, context))),
              SizedBox(height: 2.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Recommended Packages',style: TxtStyleB,)),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 25.h,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.only(top: 10,left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteclr,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2.0,2.0),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              )
                            ]
                          ),
                          width: 45.w,
                          height: 25.h,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Diabetes Care',style: TxtStyleB,),
                              SizedBox(height: 2.h,),
                              Text('Includes 30 tests',style: TxtStyleN,),
                              SizedBox(height: 1.h,),
                              Container(
                                width: 25.w,
                                height: 3.h,
                                alignment: Alignment.center,
                                color: redtxtclr,
                                child: Text("55% OFF",style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: 1.h,),
                              Row(
                                children: [
                                Text("₹ 499", style: TxtStyleL),
                                SizedBox(width: 2.w,),
                                const Text(
                                    "₹ 1099",style: TextStyle(
                                  color: hinttxtclr,
                                  decoration: TextDecoration.lineThrough
                                )),
                              ],),
                              TextButton(
                                  onPressed: (){
                                    Get.to(() => PackageDetails());
                                  },
                                  child: Text('Show Details',style: TxtStyleG,)),

                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),

              SizedBox(height: 2.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Recommended Tests',style: TxtStyleB,)),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.only(top: 10,left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteclr,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2.0,2.0),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              )
                            ]
                          ),
                          width: 45.w,
                          height: 20.h,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Insulin Fasting',style: TxtStyleB,),
                              SizedBox(height: 1.h,),
                              Container(
                                width: 25.w,
                                height: 3.h,
                                alignment: Alignment.center,
                                color: redtxtclr,
                                child: Text("55% OFF",style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: 1.h,),
                              Row(
                                children: [
                                Text("₹ 499", style: TxtStyleL),
                                SizedBox(width: 2.w,),
                                const Text(
                                    "₹ 1099",style: TextStyle(
                                  color: hinttxtclr,
                                  decoration: TextDecoration.lineThrough
                                )),
                              ],),
                              TextButton(
                                  onPressed: (){
                                    Get.to(() => PackageDetails());
                                  },
                                  child: Text('Show Details',style: TxtStyleG,)),

                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currtpage == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currtpage == index ? Color(0xFF008000) : Color(0xff979797),
      ),
    );
  }
}
