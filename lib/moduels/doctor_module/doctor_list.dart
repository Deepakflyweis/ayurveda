import 'dart:ui';

import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorListScreen extends StatefulWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  State<DoctorListScreen> createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  final _searchDoctor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Doctor list"),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: btngreen,
                  ),
                  Text(
                    "New Delhi",
                    style:
                        TextStyle(color: btngreen, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              SizedBox(
                height: 2.h,
              ),

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
                                  2.0,
                                  2.0,
                                ),
                                spreadRadius: 2.0,
                                blurRadius: 2.0)
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              controller: _searchDoctor,
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
                                prefixIcon: Icon(Icons.search,
                                    color: hinttxtclr, size: 25),
                                hintText: "Search Clinic",
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
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: btngreen,
                                    boxShadow: [
                                      BoxShadow(
                                        color: btngreen,
                                        offset: Offset(
                                          1.0,
                                          1.0,
                                        ),
                                      )
                                    ]),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.filter_list_alt,
                                      color: whiteclr),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

              Divider(thickness: 1.0, color: hinttxtclr),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                width: 90.w,
                child: ListView.builder(
                   itemCount: 10,
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                     child:  InkWell(
              onTap: () {
                
              },
              child: Container(
                  alignment: Alignment.center,
                  width: 88.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: hinttxtclr, width: 0.8),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        )
                      ]),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: btngreen,
                      radius: 40,
                      backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?w=2000",
                      ),
                    ),
                    title: Text("Dr. Martin", style: TxtStyleN),
                    subtitle: Text("You: " + "Thanks a lot", style: TxtStyleL),
                    trailing: Column(
                      children: [
                        Text("2 km", style: TxtStyleL),
                        Container(
                          width: 10.w,
                          color: redtxtclr,
                          alignment: Alignment.center,
                          child: Text("\$50",style: TextStyle(color: whiteclr)),
                        )
                      ],
                    ),
                  )),
            ),
           
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
