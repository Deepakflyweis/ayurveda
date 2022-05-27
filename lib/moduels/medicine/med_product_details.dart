
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/moduels/medicine/buy_medicine.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 

class MedProductDetails extends StatefulWidget {
  const MedProductDetails({Key? key}) : super(key: key);

  @override
  _MedProductDetailsState createState() => _MedProductDetailsState();
}

class _MedProductDetailsState extends State<MedProductDetails> {


  final List<Widget> _list = <Widget>[
    Image.asset('assets/images/prod.png', height: 80.h,width: 100.w,fit: BoxFit.fill,),
    Image.asset('assets/images/prod.png', height: 80.h,width: 100.w,fit: BoxFit.fill,),
    Image.asset('assets/images/prod.png', height: 80.h,width: 100.w,fit: BoxFit.fill,),

  ];

  int _curr=0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
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
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.h,
                  width: 100.w,
                  child: Image.asset('assets/images/prod.png',fit: BoxFit.fill),),

                SizedBox(height: 2.h,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        _list.length, (index) => buildDot(index, context))),
                SizedBox(height: 2.h,),
                Text('Medicine Name',style: TxtStyleB),

                AutoSizeText('lorem iipsum slit dolore mit ipsum slit dolore',
                    style: hintTxtStyle,maxLines: 2),
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Container(
                      height: 4.h,
                      width: 12.w,
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
                    Text('(209 Ratings)',style: hintTxtStyle,)
                  ],
                ),
                SizedBox(height: 1.h,),
                Text('MRP ₹900',style: hintTxtStyle,),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('₹500.00',style: TxtStyleG,),
                        Text('Inclusive of all taxes',style: hintTxtStyle,),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Get.to(() => BuyMedicine());
                      },
                      child: Container(
                        width: 20.w,
                        height: 5.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: boxgreenclr,
                        ),
                        child:  Text(' Buy Now ',style: TextStyle(color: whiteclr)),
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: 20.w,
                        height: 5.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: redtxtclr,
                        ),
                        child:  Text(' Add to cart ',style: TextStyle(color: whiteclr)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h,),
                Divider(thickness: 0.8,color: hinttxtclr,),

                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Similar Products',style: TxtStyleB),
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
                          child: Image.asset('assets/images/tabs.png',fit: BoxFit.cover),),


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
                SizedBox(height: 2.h,),
                Divider(thickness: 0.8,color: hinttxtclr,),
                Text('Discription',style: TxtStyleB),
                SizedBox(height: 2.h,),
                AutoSizeText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna. Ut turpis nunc, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna. Ut turpis nunc.",
                      style: hintTxtStyle, maxLines: 5, overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h,),
                Text('Benefits',style: TxtStyleB),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder : (context, snapshot) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 3.0,bottom: 3),
                        child: Row(
                          children: const [
                            Icon(Icons.circle,color: blckclr,size: 15),
                            Expanded(
                              child: AutoSizeText('Lorem ipsum dolor sit amet, consectetur adipiscing elit.   ',
                              maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      );
                  },
                ),
                SizedBox(height: 2.h,),
                Text('Ingredients',style: TxtStyleB),
                SizedBox(height: 1.h,),
                Text('Lorem ipsum dolor',style: hintTxtStyle,),
                SizedBox(height: 2.h,),
                Text('How to Use',style: TxtStyleB),
                SizedBox(height: 1.h,),
                AutoSizeText('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis.',
                style: hintTxtStyle,maxLines: 2,),
                SizedBox(height: 2.h,),
                Text('Safety Information',style: TxtStyleB),
                SizedBox(height: 2.h,),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder : (context, snapshot) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 3.0,bottom: 3),
                      child: Row(
                        children: const [
                          Icon(Icons.circle,color: blckclr,size: 15),
                          Expanded(
                            child: AutoSizeText('Lorem ipsum dolor sit amet, consectetur adipiscing elit.   ',
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 3.h,),
                Text('FAQs',style: TxtStyleB),
                SizedBox(height: 2.h,),
                AutoSizeText('Q1: Lorem ipsum dolor sit amet, consectetur adipiscing elit? ',
                  style: TxtStyleL,),

                AutoSizeText('Ans: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna.  ',
                  style: hintTxtStyle,
                   maxLines: 2,overflow: TextOverflow.ellipsis),

                SizedBox(height: 2.h,),
                AutoSizeText('Q2: Lorem ipsum dolor sit amet, consectetur adipiscing elit? ',
                  style: TxtStyleL,),

                AutoSizeText('Ans: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc, nibh facilisi felis dolor scelerisque urna.  ',
                  style: hintTxtStyle,
                   maxLines: 2,overflow: TextOverflow.ellipsis),

                SizedBox(height: 2.h,),
                Text('Product Details',style: TxtStyleB),
                SizedBox(height: 1.h,),
                AutoSizeText('Expires on or A fter : 30/05/2024',
                  style: hintTxtStyle,),

                AutoSizeText('Brand: Lorem Ipsum ',
                  style: hintTxtStyle,),

                AutoSizeText('Country of Origin: India',
                  style: hintTxtStyle,),

                AutoSizeText('Check Manufacturing details',
                  style: hintTxtStyle,),

                SizedBox(height: 2.h,),



              ],
            ),
          ),
        ),
      ),
    );
  }
  Container buildDot(int index, BuildContext context) {
    return Container(
      width: 10,
      height: _curr == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: _curr == index ? Color(0xFF336744) : Color(0xffC4C4C4),
      ),
    );
  }
}
