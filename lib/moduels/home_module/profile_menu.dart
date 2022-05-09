
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(height: 2.h,),
            Row(
              children: [
                SizedBox(width: 1.w,),
                CircleAvatar(
                  radius: 6.h,
                  backgroundColor: blckclr,
                  child: Image.asset('assets/images/profile.png'),
                ),
                SizedBox(width: 3.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Wick',style: TxtStyleN,),
                    Text('+91 0123456789',style: hintTxtStyle,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 2.h,),
            Divider(color: hinttxtclr,thickness: 0.5,),
            SizedBox(height: 1.h,),
            ListTile(
              leading: Image.asset('assets/images/diag.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Diagnostics Test', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/order.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Order Medicine', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/order.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Order Medicine', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/carts.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('My Cart', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/rx.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('My Prescriptions', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/order.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Orders', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/wallet.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Wallet', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/mem.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Membership Card', style: TxtStyleN),
              trailing: IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.arrow_forward_ios,size: 22,color: blckclr),
              ),
            ),

            ListTile(
              leading: Image.asset('assets/images/loyal.png', width: 25,fit: BoxFit.fitWidth),
              title: Text('Loyality Points', style: TxtStyleN),
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
