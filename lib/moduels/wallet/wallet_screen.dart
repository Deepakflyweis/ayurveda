
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: btngreen,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back,size: 25,color: whiteclr,)
          ),
          title: Text('Shathayu Wallet',style: TxtStyleAW),
        ),
        body: Column(
          children: [
             Divider(thickness: 3.0,color: divclr,),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Wallet Balance',style: TxtStyleB,),
                Text('₹ 0',style: TxtStyleB,),
              ],
            ),
            SizedBox(height: 10.h,),
            Center(
                child: Image.asset('assets/images/walll.png',height: 30.h,fit: BoxFit.fill,)
            )
          ],
        ),
      ),
    );
  }
}
