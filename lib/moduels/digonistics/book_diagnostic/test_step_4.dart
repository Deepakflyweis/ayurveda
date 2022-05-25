import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class TestStep4 extends StatelessWidget {
  const TestStep4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Payment"),
         body: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(20),
                child: const LinearProgressIndicator(
                  value: 1.0, 
                  valueColor: AlwaysStoppedAnimation<Color>(btngreen),
                  backgroundColor: Colors.grey,
                )),
            const Center(
                child: Text(
              "Step 4/4",
              style: TextStyle(color: Colors.blue),
            )),
                           
              SizedBox(height: 2.h,),
              Divider(thickness: 0.8 , color: hinttxtclr),
              SizedBox(height: 2.h,),
               Row(       
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,          
                  children: [
                    AutoSizeText('Full body checkup by our professional doctors',
                    maxLines: 2,overflow: TextOverflow.fade,
                    style: TxtStyleN),  
                    Text('₹ 500 /-',),                  
                  ],
                ),
                SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.picture_as_pdf_outlined,color: blueclr,size: 25),
                  SizedBox(width: 2.w,),                 
                   Text('Read precautions before test',style: TextStyle(color: blueclr)),                   
              
                ],
              ),
             const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.arrow_forward_ios,color: blckclr,size: 18)),
                const Divider(thickness: 1.0,color: hinttxtclr),      
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.countertops_outlined,color: blckclr,size: 25),
                  SizedBox(width: 2.w,),
                  Text('Apply coupon  ',style: TxtStyleN),  

                ],
              ),
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
              Divider(thickness: 1.0,color: hinttxtclr),            
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total amount',style: TxtStyleG,),
                  Text('₹ 500/-',style: TxtStyleG,),
                ],
              ),
              
              SizedBox(height: 3.h,),
              InkWell(                           
              
                onTap: () {
                  // Get.to(() => MedPlacedSucessfully());
                },
                child: Center(
                  child: Container(
                    width: 35.w,
                    height: 5.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: btngreen,width: 1.0)
                    ),
                    child: Text('Pay Now',style: TextStyle(color: btngreen,fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
               SizedBox(height: 2.h,),
              InkWell(
                onTap: () {
                  // Get.to(() => MedPlacedSucessfully());
                },
                child: Center(
                  child: Container(
                    width: 35.w,
                    height: 5.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: btngreen,width: 1.0)
                    ),
                    child: Text('Pay On Meet',style: TextStyle(color: btngreen,fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
        ),
      
      ),
    );
  }
}
