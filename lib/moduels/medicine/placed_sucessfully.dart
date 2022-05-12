
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/moduels/home_module/home_screen.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';

class MedPlacedSucessfully extends StatelessWidget {
  const MedPlacedSucessfully({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Items',style: TxtStyleB,)) ,
                SizedBox(height: 1.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Medicine Name',style: TxtStyleN,),
                    Text('₹ 500/-',style: TxtStyleN,),
                  ],
                ),
                SizedBox(height: 2.h,),
                Divider(thickness: 5.0,color: divclr),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Date',style: TxtStyleN,),
                    Text('15 april - 20 april',style: TxtStyleN,),
                  ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Time',style: TxtStyleN,),
                    Text('8:00 AM - 6:00 PM',style: TxtStyleN,),
                  ],
                ),
                SizedBox(height: 2.h,),
                Divider(thickness: 5.0,color: divclr),
                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Return Policy',style: TxtStyleB,)),
                SizedBox(height: 2.h,),
                AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna. Ut turpis nunc, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna. Ut turpis nunc.",
                  maxLines: 4,overflow: TextOverflow.ellipsis,style: hintTxtStyle,
                ),
                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Items recommended for you',style: TxtStyleB,)),

                SizedBox(height: 2.h,),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2.5,color: cardclr),
                    ),
                    height: 15.h,

                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20.w,
                          height: 15.h,
                          child: Image.asset('assets/images/tabs.png',fit: BoxFit.fill),),


                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h,),
                            Text('Medicine Name',style: TxtStyleN,),
                            SizedBox(width: 5.w,),
                            SizedBox(height: 2.h,),
                            Text(' lorem iipsum slit     ',
                              style: TxtStyleL,
                              maxLines: 2,overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 2.h,),
                            Text('₹500',style: TxtStyleG,),
                            SizedBox(width: 2.w,)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
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
                SizedBox(height: 3.h,),
                InkWell(
                  onTap: () {
                    Get.to(() => HomeScreen());
                  },
                  child: Container(
                    width: 40.w,
                    height: 5.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: btngreen,
                    ),
                    child: Text('Back to Home',style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
