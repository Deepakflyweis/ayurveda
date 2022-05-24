
import 'package:ayurveda/moduels/medicine/placed_sucessfully.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 

class BuyMedicine extends StatefulWidget {
  const BuyMedicine({Key? key}) : super(key: key);

  @override
  State<BuyMedicine> createState() => _BuyMedicineState();
}

class _BuyMedicineState extends State<BuyMedicine> {
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
        body: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,color: blckclr,size: 25),
                  SizedBox(width: 2.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mayur Vihar, New Delhi',style: TxtStyleN),
                      Text('lorem ipsum dolor sit dummy',style: TextStyle(color: blckclr,fontSize: 12),),
                    ],
                  ),
                  Spacer(),
                  Text('Change',style: TextStyle(color: Colors.blue[800],fontSize: 15,fontWeight: FontWeight.w600),),

                ],
              ),
              SizedBox(height: 2.h,),
              Divider(thickness: 5.0,color: divclr),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined,color: blckclr,size: 25),
                  SizedBox(width: 2.w,),
                  Text('Apply coupon  ',style: TxtStyleN),

                  Spacer(),
                Icon(Icons.arrow_forward_ios,color: blckclr,size: 18),
                ],
              ),
              SizedBox(height: 2.h,),
              Divider(thickness: 5.0,color: divclr),
              SizedBox(height: 2.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Bill Details',style: TxtStyleN,)),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Cost',style: hintTxtStyle,),
                  Text('₹ 500/-',style: TxtStyleN,),
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery Charge',style: hintTxtStyle,),
                  Text('₹ 0/-',style: TxtStyleN,),
                ],
              ),
              SizedBox(height: 2.h,),
              Divider(thickness: 1,color: divclr,),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total amount',style: TxtStyleG,),
                  Text('₹ 500/-',style: TxtStyleG,),
                ],
              ),
              Divider(thickness: 5.0,color: divclr),
              SizedBox(height: 5.h,),
              InkWell(
                onTap: () {
                  Get.to(() => MedPlacedSucessfully());
                },
                child: Container(
                  width: 35.w,
                  height: 5.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: btngreen,
                  ),
                  child: Text('Pay Now',style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
