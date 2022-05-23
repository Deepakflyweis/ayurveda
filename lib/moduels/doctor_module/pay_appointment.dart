import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:flutter/material.dart';

class PayAppointment extends StatefulWidget {
  const PayAppointment({Key? key}) : super(key: key);

  @override
  State<PayAppointment> createState() => _PayAppointmentState();
}

class _PayAppointmentState extends State<PayAppointment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: ""),
        body: ListView(
          children: [],
        ),
      ),
    );
  }
}
