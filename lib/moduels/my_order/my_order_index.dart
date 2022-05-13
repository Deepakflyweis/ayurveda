
import 'package:ayurveda/moduels/my_order/lab_test_order.dart';
import 'package:ayurveda/moduels/my_order/medicines_order.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MyOrderIndex extends StatefulWidget {
  const MyOrderIndex({Key? key}) : super(key: key);

  @override
  State<MyOrderIndex> createState() => _MyOrderIndexState();
}

class _MyOrderIndexState extends State<MyOrderIndex> with SingleTickerProviderStateMixin{

  late TabController _tabController ;


  @override
  void initState() {
    _tabController =   TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();

  }

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
          title: Text('My Order',style: TxtStyleAW),
        ),
        body: Column(
          children: [
            TabBar(
                labelColor: blckclr,
                labelStyle:  TxtStyleB,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Medicines',),
                  Tab(text: 'Lab Test',),
                ]),
            Expanded(
                child: TabBarView(
                  children: const [
                    MedicinesOrder(),
                    LabTestOrder(),
                  ],
                  controller: _tabController,
                ))
          ],
        ),
      ),
    );
  }
}
