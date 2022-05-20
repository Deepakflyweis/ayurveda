import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LabTest extends StatefulWidget {
    LabTest({Key? key}) : super(key: key);

  

  @override
  State<LabTest> createState() => _LabTestState();
}

class _LabTestState extends State<LabTest> {

final _searchLabTest = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Consult Specialist"),
        body: SingleChildScrollView(
            child: Column(
          children: [
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
                            controller: _searchLabTest,
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
                            child: const Text(
                              'Search',
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
            SizedBox(
              height: 2.h,
            ),

            Divider(thickness: 1.0, color: hinttxtclr),
            SizedBox(
              height: 3.h,
            ),

            SizedBox(
                 width: 90.w,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.only(top: 1.0,bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.5,color: cardclr),
                            ),
                            height: 25.h,

                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                 width: 20.w,
                                 height: 25.h,
                                 child: Image.asset('assets/images/hosp.png',fit: BoxFit.cover),),


                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 1.h,),
                                    Row( 
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Apollo Hospital',style: TxtStyleN,),
                                        Container(
                                      height: 3.h,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: btngreen,
                                      ),
                                      child: Row(
                                        children: const [
                                          Text(' 4.5 '),
                                          Icon(Icons.star,color: Colors.amber,size:12,),
                                        ],
                                      ),
                                    ),
                                    
                                      ],
                                    ),
                                    
                                    SizedBox(height: 1.h,),
                                    Text( "Lorem ipsum dolor sit amet, consectetur adipiscing elit. New Delhi, Pincode -110091",
                                      style: TxtStyleL,
                                    maxLines: 2,overflow: TextOverflow.ellipsis,
                                    ),
                                   
                                     
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    
                                    InkWell(
                                      onTap: (){

                                      },
                                      child: Container(
                                        width: 75,
                                        height: 25,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: redtxtclr,
                                        ),
                                        child:  Text(' Add to cart ',style: TextStyle(color: whiteclr)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ),
                        );
                      }
                  ),
                ),
          ],
        )),
      ),
    );
  }
}
