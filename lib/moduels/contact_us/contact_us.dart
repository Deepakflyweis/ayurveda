import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Contact us"),
        body: Column(
               children: [
                SizedBox(height: 2.h,),
                ListTile(
                  leading: Image.asset("assets/images/comp.png",
                  width: 10.w,
                  height: 4.h,fit: BoxFit.fill,
                  ),
                  title: Text("Company Name",style: TxtStyleN),
                ),
                SizedBox(height: 2.h,),
                Divider(thickness: 0.8,color: hinttxtclr,),
                ListTile(
                  leading: Image.asset("assets/images/email.png",
                  width: 10.w,
                  height: 4.h,fit: BoxFit.fill,
                  ),
                  title: Text("Email",style: TxtStyleN),
                  subtitle: Text("Campany@gmail.com",style: TxtStyleL),
                ),
                
                Divider(thickness: 0.8,color: hinttxtclr,),
                ListTile(
                  leading: Image.asset("assets/images/phone.png",
                  width: 10.w,
                  height: 4.h,fit: BoxFit.fill,
                  ),
                  title: Text("Contact no.",style: TxtStyleN),
                  subtitle: Text("+91 123456789",style: TxtStyleL),
                ),
                 
                Divider(thickness: 0.8,color: hinttxtclr,),
                SizedBox(height: 1.h,),
                ListTile(
                  leading: Image.asset("assets/images/loc.png",
                  width: 10.w,
                  height: 5.h,fit: BoxFit.fill,
                  ),
                  title: Text("Address",style: TxtStyleN),
                  subtitle: Text("Location, Mayur vihar, phase 1, New Delhi.Pin code - 110049",
                  style: TxtStyleL,maxLines: 3,overflow: TextOverflow.ellipsis),
                ),
                 
                Divider(thickness: 0.8,color: hinttxtclr,),
              ],
            )
         
      ),
    );
  }
}
