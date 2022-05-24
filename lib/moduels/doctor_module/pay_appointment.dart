import 'dart:ui';

import 'package:ayurveda/controllers/payment_controller.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:ayurveda/widgets/textfield.dart';
import 'package:flutter/material.dart';

class PayAppointment extends StatefulWidget {
  const PayAppointment({Key? key}) : super(key: key);

  @override
  State<PayAppointment> createState() => _PayAppointmentState();
}

class _PayAppointmentState extends State<PayAppointment> {
  final _patientName = TextEditingController();

  Paymentcontroller paymentcontroller = Get.put(Paymentcontroller());

  bool _value = false;
  int? val = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: ""),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Text(
                "Online video Consultation",
                style: TxtStyleB,
              ),
              SizedBox(
                height: 1.h,
              ),
              CustomTxtfield(controller: _patientName, label: "Patient Name"),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "What’s your Query",
                style: TxtStyleB,
              ),
              ListTile(
                leading: Icon(
                  Icons.security,
                  color: Colors.red[400],
                ),
                title: Text(
                  "Your question detail will be 100% private and secure.",
                  style: hintTxtStyle,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    color: whiteclr,
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(2.0, 2.0),
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 2)
                    ]),
                width: 85.w,
                height: 30.h,
                padding: EdgeInsets.only(left: 12, top: 8),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Discribe your problem...',
                    hintStyle: hintTxtStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Container(
                    width: 75.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: btngreen, width: 1.5),
                    ),
                    alignment: Alignment.center,
                    child: Text("Add attachments",
                        style: TextStyle(
                            color: btngreen, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text("Payment Options", style: TxtStyleB),
              SizedBox(
                width: 85.w,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.local_atm_sharp),
                          title: Text("Apple Pay", style: TxtStyleN),
                          trailing: Radio(
                            groupValue: val,
                            value: 1,
                            onChanged: ((value) {
                              setState(() {
                                val = value! as int?;
                              });
                            }),

                            // value: PaymentMethod.paytm,
                            //  groupValue: paymentcontroller.selecthosOption,
                            //   onChanged: paymentcontroller.onchaged()
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.local_atm_sharp),
                          title: Text("PayPal", style: TxtStyleN),
                          trailing: Radio(
                            groupValue: val,
                            value: 2,
                            onChanged: ((value) {
                              setState(() {
                                val = value! as int?;
                              });
                            }),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.local_atm_sharp),
                          title: Text("Credit Card", style: TxtStyleN),
                          trailing: Radio(
                            groupValue: val,
                            value: 3,
                            onChanged: ((value) {
                              setState(() {
                                val = value! as int?;
                              });
                            }),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Container(
                    width: 70.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: btngreen),
                    alignment: Alignment.center,
                    child: Text("Payment",
                        style: TextStyle(
                            color: whiteclr, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
