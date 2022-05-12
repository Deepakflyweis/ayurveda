
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class AppointmentIndex extends StatefulWidget {
  const AppointmentIndex({Key? key}) : super(key: key);

  @override
  State<AppointmentIndex> createState() => _AppointmentIndexState();
}

class _AppointmentIndexState extends State<AppointmentIndex> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          elevation: 5,
          backgroundColor: btngreen,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back,size: 25,color: whiteclr,)
          ),
          title: Text('Appointments',style: TxtStyleAW),
        ),

      ),
    );
  }
}
