
import 'package:flutter/material.dart';

class LabTestOrder extends StatefulWidget {
  const LabTestOrder({Key? key}) : super(key: key);

  @override
  State<LabTestOrder> createState() => _LabTestOrderState();
}

class _LabTestOrderState extends State<LabTestOrder> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/images/labt.png',fit: BoxFit.cover),
    );
  }
}
