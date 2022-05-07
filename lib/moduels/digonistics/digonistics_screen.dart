
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/utility.dart';
import 'package:flutter/material.dart';

class DigonisticsScreen extends StatefulWidget {
  const DigonisticsScreen({Key? key}) : super(key: key);

  @override
  State<DigonisticsScreen> createState() => _DigonisticsScreenState();
}

class _DigonisticsScreenState extends State<DigonisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0,
            backgroundColor: btngreen,
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back,size: 25,color: whiteclr,)
            ),
            title: Text('Digonostics'),),
      ),
    );
  }
}
