import 'package:ayurveda/moduels/contact_us/contact_us.dart';
import 'package:ayurveda/moduels/coupon/coupon_screen.dart';
import 'package:ayurveda/moduels/f_a_q/faq_screen.dart';
import 'package:ayurveda/moduels/help_support/help_support.dart';
import 'package:ayurveda/moduels/home_module/profile/edit_profile.dart'; 
 
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:rating_dialog/rating_dialog.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
           appBar:  AppBar(
          elevation: 5,
          backgroundColor: btngreen,           
          title: Text("Profile",style: TxtStyleAW),
    
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 2.h,
            ),
            CircleAvatar(
              radius: 6.h,
              backgroundColor: blckclr,
              child: Image.asset('assets/images/profile.png', fit: BoxFit.fill),
            ),
            Center(
                child: Text(
              'John Wick',
              style: TxtStyleN,
            )),
            Center(
                child: Text(
              '+91 0123456789',
              style: hintTxtStyle,
            )),
            Center(
                child: Text(
              'example@gmail.com',
              style: hintTxtStyle,
            )),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(() => EditProfile());
                },
                child: Container(
                  height: 4.h,
                  width: 30.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6), color: btngreen),
                  child: const Text("Edit Profile",
                      style: TextStyle(
                          color: whiteclr,
                          fontWeight: FontWeight.w600,
                          fontSize: 13)),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text('29 Yrs',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Age',
                        style: TextStyle(
                            color: btngreen, fontWeight: FontWeight.w500)),
                  ],
                ),
                Column(
                  children: const [
                    Text('70 Kg',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Weight',
                        style: TextStyle(
                            color: btngreen, fontWeight: FontWeight.w500)),
                  ],
                ),
                Column(
                  children: const [
                    Text('6 Ft', style: TextStyle(fontWeight: FontWeight.w500)),
                    Text('Height',
                        style: TextStyle(
                            color: btngreen, fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            ListTile(
              leading: Image.asset('assets/images/cc.png',
                  width: 25, fit: BoxFit.fitWidth),
              title: Text('Coupon Codes', style: TxtStyleN),
              trailing: IconButton(
                onPressed: () {
                  Get.to(() => CouponScreen());
                },
                icon: Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/helps.png',
                  width: 25, fit: BoxFit.fitWidth),
              title: Text('Help & Support', style: TxtStyleN),
              trailing: IconButton(
                onPressed: () {
                  Get.to(() => HelpSupport());
                },
                icon: Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/faqs.png',
                  width: 25, fit: BoxFit.fitWidth),
              title: Text('FAQs', style: TxtStyleN),
              trailing: IconButton(
                onPressed: () {
                  Get.to(() => FAQScreen());
                },
                icon: Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/cntctus.png',
                  width: 25, fit: BoxFit.fitWidth),
              title: Text('Contact us', style: TxtStyleN),
              trailing: IconButton(
                onPressed: () {
                  Get.to(() => ContactUs());
                },
                icon: Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/rate.png',
                  width: 25, fit: BoxFit.fitWidth),
              title: Text('Rate us ', style: TxtStyleN),
              trailing: IconButton(
                onPressed: () {
                 _showRatingDialog();
                },
                icon: Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/logout.png',
                  width: 25, fit: BoxFit.fitWidth),
              title: Text('Log out', style: TxtStyleN),
              trailing: IconButton(
                onPressed: () {
                  
                },
                icon: Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
              ),
            ),
          ],
        ),
      ),
    );
  }

 void _showRatingDialog(){
   
   
   final _dialog = RatingDialog(
    initialRating: 1.0,
    starColor: Colors.amber,
    title: const Text("Rate us",
        style: TextStyle(
            color: btngreen, fontWeight: FontWeight.bold, fontSize: 24)),
    submitButtonText: "Submit",
    onSubmitted: (response) {
      Get.back();
    },
   );

    showDialog(
         context: context,
                    barrierDismissible:
                        true, // set to false if you want to force a rating
                    builder: (context) => _dialog,
                  );
 }
}
