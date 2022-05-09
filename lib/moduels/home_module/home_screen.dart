
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _search = TextEditingController();

  List _mycatList = [
  'assets/images/serv.png',
   'assets/images/ther.png',
   'assets/images/dis.png',
    'assets/images/pack.png',
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: btngreen,
          title: Row(
            children: const [
              Icon(Icons.location_on_outlined,color: whiteclr,),
              Text('Mayur Vihar, New Delhi',style: TextStyle(color: whiteclr,fontSize: 14),),
              Icon(Icons.keyboard_arrow_down_outlined,color: whiteclr,),
              Spacer(),
              Icon(Icons.menu,size: 25,color: whiteclr,),
            ],
          ),
        ),
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
                              controller: _search,
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
                                prefixIcon: Icon(Icons.search,color: hinttxtclr,size: 25),
                                hintText:  "Search Clinic" ,
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

              Divider(thickness: 0.5,color: blckclr),
              SizedBox(height: 3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/med.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),

                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/treatment.png',
                      height: 15.h,
                      fit: BoxFit.fill,
                    ),
                  ),

                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset('assets/images/cons.png',
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
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text('Categories',style: TxtStyleG,),
                ),
              ),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    itemCount: _mycatList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: GestureDetector(
                             onTap: (){},
                            child: Image.asset(_mycatList[index],fit: BoxFit.fill,)),
                      );
                }),
              ),

              SizedBox(height: 3.h,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text('Top Specialist',style: TxtStyleG,),
                  ),
                  Spacer(),

                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Text('View all',style:   TextStyle(
                      color: redtxtclr,
                        decoration: TextDecoration.underline,
                      decorationColor: redtxtclr,decorationThickness: 2.0
                    ),),
                  ),

                ],
              ),
              SizedBox(height: 2.h,),

              ///Top Specialist
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return GestureDetector(
                           onTap: (){

                           },
                          child: Column(
                            children: [
                              Image.asset('assets/images/docs.png',height: 15.h,fit: BoxFit.cover,),
                              Text('Doctor name',style: TxtStyleL,),
                              Text('Specialist',style: hintTxtStyle,),
                            ],
                          )  );
                }),
              ),

              SizedBox(height: 3.h,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text('Lab Test & Health Check-up',style: TxtStyleG,),
                  ),
                  Spacer(),

                  const Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Text('View all',style:   TextStyle(
                        color: redtxtclr,
                        decoration: TextDecoration.underline,
                        decorationColor: redtxtclr,decorationThickness: 2.0
                    ),),
                  ),
                ],
              ),
              SizedBox(height: 3.h,),
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return GestureDetector(
                          onTap: (){

                          },
                          child: Image.asset('assets/images/treatment.png',height: 20.h,fit: BoxFit.cover,),

                           );
                    }),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text('Testimonials',style: TxtStyleN,),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
