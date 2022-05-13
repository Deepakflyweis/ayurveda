import 'package:flutter/material.dart';

class MedicinesOrder extends StatefulWidget {
  const MedicinesOrder({Key? key}) : super(key: key);

  @override
  State<MedicinesOrder> createState() => _MedicinesOrderState();
}

class _MedicinesOrderState extends State<MedicinesOrder> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/images/ordm.png',fit: BoxFit.cover),
    );
  }
}
