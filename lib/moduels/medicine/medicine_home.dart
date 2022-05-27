
import 'package:ayurveda/moduels/medicine/med_product_details.dart';
import 'package:ayurveda/moduels/medicine/medicine_products.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MedicineHome extends StatefulWidget {
  const MedicineHome({Key? key}) : super(key: key);

  @override
  State<MedicineHome> createState() => _MedicineHomeState();
}

class _MedicineHomeState extends State<MedicineHome> {

  TextEditingController _searchMed = TextEditingController();

  final List _medList = [
    'assets/images/covid.png',
    'assets/images/skins.png',
    'assets/images/muscles.png',
    'assets/images/vit.png',
    'assets/images/baby.png',
    'assets/images/protein.png',
  ];

  List <String> images = [
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
          elevation: 0,
          backgroundColor: btngreen,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back,size: 25,color: whiteclr,)
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.shopping_cart,color: whiteclr,size: 25),
              ),
            )
          ],
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
                              controller: _searchMed,
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
                                hintText:  "Search medicines & health products" ,
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
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Categories',style: TxtStyleN,),
                  )),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 20.h,
                child: ListView.builder(
                    itemCount: _medList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return GestureDetector(
                          onTap: (){
                            Get.to(() => MedicineProducts());
                          },
                          child: Image.asset(_medList[index],fit: BoxFit.fill,));
                    }),
              ),

              SizedBox(height: 2.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('For You',style: TxtStyleB,),
                  )),

              SizedBox(height: 1.h,),

              ///For you
              Container(
                padding: EdgeInsets.all(12.0),
                child: GridView.builder(
                  physics: ScrollPhysics(),
                    gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 6.0,
                        mainAxisSpacing: 6.0
                    ),
                    itemCount: images.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return InkWell(
                        onTap: (){
                          Get.to(() => MedProductDetails());
                        },
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                                child: Image.asset('assets/images/tabs.png',fit: BoxFit.fill),
                              ),
                              Align(
                                   alignment: Alignment.centerLeft,
                                   child: Text('Medicine Name',style: TxtStyleN,)),
                              Row(
                                children: const [
                                  Text(' lorem ipsuem dolor',style: TextStyle(fontSize: 10),overflow: TextOverflow.fade),
                                  Text('4.5'),
                                  Icon(Icons.star_rate,color: Colors.amber,),
                                ],
                              ),

                              Row(
                                children: [
                                  Text(' ₹ 500',style: TextStyle(color: redtxtclr ),),
                                  Text(' Incl. of all taxes',style: TxtStyleL,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 2.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Most Sold',style: TxtStyleB,),
                  )),
              SizedBox(height: 1.h,),

              ///Most Sold
              Container(
                padding: EdgeInsets.all(12.0),
                child: GridView.builder(
                  physics: ScrollPhysics(),
                    gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0
                    ),
                    itemCount: images.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return InkWell(
                        onTap: (){

                        },
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                                child: Image.asset('assets/images/tabs.png',fit: BoxFit.fill),
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Medicine Name',style: TxtStyleN,)),
                              Row(
                                children: const [
                                  Text(' lorem ipsuem dolor',style: TextStyle(fontSize: 10),overflow: TextOverflow.fade),
                                  Text('4.5'),
                                  Icon(Icons.star_rate,color: Colors.amber,),
                                ],
                              ),

                              Row(
                                children: [
                                  Text(' ₹ 500',style: TextStyle(color: redtxtclr ),),
                                  Text(' Incl. of all taxes',style: TxtStyleL,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),

              SizedBox(height: 2  .h,),
            ],
          ),
        ),
      ),
    );
  }
}
