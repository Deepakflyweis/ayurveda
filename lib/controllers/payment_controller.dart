

import 'package:ayurveda/utils/packages_used/essential.dart';
 

enum PaymentMethod {paytm, mobikwik, awazon, upi, netBanking, cards}

class Paymentcontroller extends GetxController{
 Rx<PaymentMethod> selecthosOption = PaymentMethod.paytm.obs;
 onchaged( ){
   selecthosOption( );
 }
  
}