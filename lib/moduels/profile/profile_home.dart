
import 'package:ayurveda/moduels/profile/edit_profile.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: 'Profile',),
        body: ListView(
          children: [
            SizedBox(height: 2.h,),
            CircleAvatar(
              radius: 6.h,
              backgroundColor: blckclr,
              child: Image.asset('assets/images/profile.png',fit: BoxFit.fill),
            ),
            Center(child: Text('John Wick',style: TxtStyleN,)),
            Center(
                child: Text('+91 0123456789',style: hintTxtStyle,)),
            Center(
                child: Text('example@gmail.com',style: hintTxtStyle,)),
            SizedBox(height: 1.h,),
            Center(
              child: InkWell(
                onTap: (){
                  Get.to(() => EditProfile());
                },
                child: Container(
                  height: 4.h,
                  width: 30.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: btngreen
                  ),
                  child: const Text(
                      "Edit Profile",
                      style: TextStyle(color: whiteclr,fontWeight: FontWeight.w600,fontSize: 13)),
                ),
              ),
            ),

            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text('29 Yrs',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Age',style: TextStyle(color: btngreen,fontWeight: FontWeight.w500)),
                  ],
                ),
                Column(
                  children: const [
                    Text('70 Kg',style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Weight',style: TextStyle(color: btngreen,fontWeight: FontWeight.w500)),
                  ],
                ),
                Column(
                  children: const [
                    Text('6 Ft',style: TextStyle( fontWeight: FontWeight.w500)),
                    Text('Height',style: TextStyle(color: btngreen,fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 2.h,),
            ListTile(
              leading: Image.asset('assets/images/cc.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Coupon Codes', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){
                  // Get.to(() => DigonisticsScreen());
                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/helps.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Help & Support', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){
                  // Get.to(() => MedicineHome());
                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/faqs.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('FAQs', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/cntctus.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Contact us', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                  // Get.to(() => PrescriptionScreen());
                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/rate.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Rate us ', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/logout.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Log out', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
