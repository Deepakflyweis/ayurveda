
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  final _street = TextEditingController();
  final _zipCode = TextEditingController();
  final _landmark = TextEditingController();
  final _city = TextEditingController();
  final _state = TextEditingController();

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
          ),),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/map.png',height: 25.h,
                  width: 100.w,
                  fit: BoxFit.cover,),
                SizedBox(height: 2.h,),
                const Text('Set your location',style: TextStyle(
                  fontSize: 18,
                  color: blckclr,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 2.h,),
                Text('Street No.',style: TxtStyleN,),
                SizedBox(height: 2.h,),

                ///Street
                CustomTxtfield(
                    controller: _street,
                    label: ''),

                SizedBox(height: 2.h,),
                Text('Zip code.',style: TxtStyleN,),
                SizedBox(height: 2.h,),

                ///Zip code
                CustomTxtfield(
                    controller: _zipCode,
                    label: ''),

                SizedBox(height: 2.h,),
                Text('Landmark',style: TxtStyleN,),
                SizedBox(height: 2.h,),

                ///Landmark
                CustomTxtfield(
                    controller: _landmark,
                    label: ''),

                SizedBox(height: 2.h,),
                Text('City',style: TxtStyleN,),
                SizedBox(height: 2.h,),

                ///City
                CustomTxtfield(
                    controller: _city,
                    label: ''),

                SizedBox(height: 2.h,),
                Text('State',style: TxtStyleN,),
                SizedBox(height: 2.h,),

                ///State
                CustomTxtfield(
                    controller: _state,
                    label: ''),

                SizedBox(height: 5.h,),
                InkWell(
                  onTap: (){

                  },
                  child: Center(
                    child: Container(
                      height: 6.h,
                      width: 45.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: btngreen,
                      ),
                      child: Text('Save',style: TextStyle(color: whiteclr,fontSize: 15,fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
              ],
            ),
          ),

        ) ,
      ),
    );
  }
}
