
 
import 'package:ayurveda/moduels/digonistics/book_diagnostic/test_name.dart';
import 'package:ayurveda/moduels/digonistics/digonistics_screen.dart';
 
 
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
        home: DiagnosticTestName
        (),
      );
    }
    ));
  }
}




