
import 'package:ayurveda/moduels/packages/diabetes_checkup_screen.dart'; 
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Packages"),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 8),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Packages",
                  style: TxtStyleB,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(              
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                       crossAxisSpacing: 6,
                        mainAxisSpacing: 6),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                         Get.to(() => DiabetesCheckupScreen());
                      },
                      child: Container(
                        height: 50.h,                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: SizedBox(
                          height: 45.h,
                          width: 25.w,
                          child: Image.network(
                            "src",
                            fit: BoxFit.fill,
                            errorBuilder: (context, Object, StackTrace) =>
                                Center(
                                    child: Image.asset("assets/images/rrr.png",                                     
                                        fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
       
   
      ),
    );
  }
    
   
}