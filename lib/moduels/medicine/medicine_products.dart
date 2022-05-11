
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MedicineProducts extends StatefulWidget {
  const MedicineProducts({Key? key}) : super(key: key);

  @override
  _MedicineProductsState createState() => _MedicineProductsState();
}

class _MedicineProductsState extends State<MedicineProducts> {

  TextEditingController _searchMedProducts = TextEditingController();

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
                                controller: _searchMedProducts,
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

                Divider(thickness: 0.5,color: blckclr),
                SizedBox(height: 3.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text('Showing products for Covid-19',style: TxtStyleB,),
                    )),
                SizedBox(height: 2.h,),

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
                        );
                      }
                  ),
                ),
          ]),
        ),
      ),

    );
  }

}
