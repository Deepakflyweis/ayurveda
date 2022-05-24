import 'package:ayurveda/moduels/digonistics/book_diagnostic/test_step_3.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/textfield.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestStep2 extends StatefulWidget {
  const TestStep2({Key? key}) : super(key: key);

  @override
  State<TestStep2> createState() => _TestStep2State();
}

class _TestStep2State extends State<TestStep2> {

  final _street = TextEditingController();
  final _zipCode = TextEditingController();
  final _landmark = TextEditingController();
  final _city = TextEditingController();
  final _state = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        appBar:  CustomAppbar(title: " Set location "),
        body: SingleChildScrollView(
          child: Column(
             
            children: [
               Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(20),
                child: const LinearProgressIndicator(
                  value: 0.5,
                  valueColor: AlwaysStoppedAnimation<Color>(btngreen),
                  backgroundColor: Colors.grey,
                )),
            const Center(
                child: Text(
              "Step 2/4",
              style: TextStyle(color: Colors.blue),
            )),
            SizedBox(
              height: 2.h,
            ),
              Image.asset('assets/images/map.png',height: 25.h,
                width: 100.w,
                fit: BoxFit.cover,),
              SizedBox(height: 2.h,),
             
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Street No.',style: TxtStyleN,),
                ),
              ),
              SizedBox(height: 2.h,),

              ///Street
              CustomTxtfield(
                  controller: _street,
                  label: ''),

              SizedBox(height: 2.h,),
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Zip code.',style: TxtStyleN,),
                   )
                  ),
              SizedBox(height: 2.h,),

              ///Zip code
              CustomTxtfield(
                  controller: _zipCode,
                  label: ''),

              SizedBox(height: 2.h,),
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child:Text('Landmark',style: TxtStyleN,),),),
              SizedBox(height: 2.h,),

              ///Landmark
              CustomTxtfield(
                  controller: _landmark,
                  label: ''),

              SizedBox(height: 2.h,),
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child:Text('City',style: TxtStyleN,),)),

              SizedBox(height: 2.h,),

              ///City
              CustomTxtfield(
                  controller: _city,
                  label: ''),

              SizedBox(height: 2.h,),
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child:Text('State',style: TxtStyleN,),)),
              SizedBox(height: 2.h,),

              ///State
              CustomTxtfield(
                  controller: _state,
                  label: ''),

              SizedBox(height: 3.h,),
              InkWell(
                onTap: (){

                   Get.to(() => BookStep3());

                },
                child: Center(
                  child: Container(
                    height: 5.h,
                    width: 45.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: btngreen,
                    ),
                    child: Text('Next',style: TextStyle(color: whiteclr,fontSize: 15,fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
            ],
          ),

        ) ,
      ),
    );
  }
}
