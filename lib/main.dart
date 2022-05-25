
import 'package:ayurveda/moduels/services/diseases_we_treat.dart';
import 'package:ayurveda/moduels/services/threapy.dart';
import 'package:ayurveda/moduels/timeslot/timeslot_screen.dart'; 
import 'package:ayurveda/utils/packages_used/essential.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Shathayu',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TimeSlotScreen
        (),
      );
    }
    ));
  }
}




