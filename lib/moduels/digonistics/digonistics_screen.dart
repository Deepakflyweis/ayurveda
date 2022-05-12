
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/utils/utility.dart';
import 'package:flutter/material.dart';

class DigonisticsScreen extends StatefulWidget {
  const DigonisticsScreen({Key? key}) : super(key: key);

  @override
  State<DigonisticsScreen> createState() => _DigonisticsScreenState();
}

class _DigonisticsScreenState extends State<DigonisticsScreen> {

  TextEditingController _searchDiag = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
            backgroundColor: btngreen,
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back,size: 25,color: whiteclr,)
            ),

          title: Text('Diagnostics',style: TxtStyleAW),),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 2.h,),

              ///Search
              SizedBox(
              width: 90.w,
              child: Stack(
                children: [
                  Container(
                    height: 6.h,
                    width: 90.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: whiteclr,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          )]
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            controller: _searchDiag,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              constraints: BoxConstraints(maxWidth: 100.w),
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,color: hinttxtclr),
                              hintText:  "Search for test, health packages" ,
                              hintStyle: hintTxtStyle,
                            ),
                          ),
                        ),
                        Align(
                           alignment: Alignment.centerRight,
                          child: Container(
                            width: 25.w,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 1.0,color: Colors.black12,),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                              bottomRight:  Radius.circular(10),
                           ),
                              color: btngreen,
                                boxShadow: [
                                  BoxShadow(
                                    color: btngreen,
                                    offset: Offset(
                                      1.0,
                                      1.0,
                                    ),

                                  )]
                            ),
                            child: const Text('Search',
                            style: TextStyle(
                              fontSize: 14,
                              color: whiteclr,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
              SizedBox(height: 2.h,),

              Divider(thickness: 0.3,color: blckclr),
              SizedBox(height: 3.h,),

              SizedBox(
                height: 25.h,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15),
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0.5,color: cardclr),
                          ),
                          height: 20.h,
                           width: 60.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2.h,),
                              Container(
                                width: 25.w,
                                height: 3.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  color: boxclr,
                                ),
                                child: Text('Limited time',style: TextStyle(color: whiteclr)),
                              ),
                              SizedBox(height: 1.h,),
                              Text('Covid-19  RT-PCR  test',style: TxtStyleN,),
                              SizedBox(height: 1.h,),
                              Row(
                                children: [
                                  Icon(Icons.medical_services_outlined,color: hinttxtclr),
                                  SizedBox(width: 1.w,),
                                  Text('Reports available in 24 hours',style: hintTxtStyle,)
                                ],),
                              SizedBox(height: 1.h,),
                              Row(
                                children: [
                                  Icon(Icons.electric_scooter,color: hinttxtclr),
                                  SizedBox(width: 1.w,),
                                  Text('Home sample collection',style: hintTxtStyle,)
                                ],),
                              SizedBox(height: 1.h,),
                              Text('Starting @₹ 500/-',style: TxtStyleN,),
                              SizedBox(height: 1.h,),
                              Container(
                                width: 25.w,
                                height: 3.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: blueclr,
                                ),
                                child: Text('Know More',style: TextStyle(color: whiteclr)),
                              ),

                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 3.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Find tests by health concern',style: TxtStyleN,),
                  )),
              SizedBox(height: 5.h,),

              ///menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/diabetes.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),

                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/skin.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/kidney.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/sexual.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 3.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Top Booked Diognostics tests',style: TxtStyleN,),
                  )),
              SizedBox(height: 3.h,),

              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15),
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 0.5,color: cardclr),
                          ),
                          height: 20.h,
                          width: 60.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2.h,),
                              SizedBox(height: 1.h,),
                              Text('Covid-19 test',style: TxtStyleN,),
                              SizedBox(height: 1.h,),
                              Row(
                                children: [
                                  Expanded(
                                      child: Text('Check antibody test & RTPCR',style: hintTxtStyle,))
                                ],),
                              SizedBox(height: 1.h,),
                              Text('E-Reports in 24 hour ',style: hintTxtStyle,),
                              SizedBox(height: 1.h,),
                              Text(' @₹ 500/-',style: TxtStyleN,),
                              SizedBox(height: 1.h,),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 25.w,
                                  height: 3.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: btngreen,
                                  ),
                                  child: const Text('Book Now',
                                      style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 5.h,),
            ],
          ),
        ),
      ),
    );
  }
}
