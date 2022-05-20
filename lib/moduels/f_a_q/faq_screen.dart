import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppbar(title: "FAQs"),
          body: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10,left: 15,right: 15),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                height: 7.h,
                    width: 85.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: whiteclr,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                          offset: Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 2.0,
                          spreadRadius: 2.0,
                      )]
                    ),
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                              // SizedBox(width: 1.w,),
                            Text("How can I book appointment?",style: TxtStyleL,),
                            IconButton(onPressed: () {
                              
                            },
                             icon: Icon(Icons.add_circle_outline_outlined,color: btngreen,size: 25,)),
                          // SizedBox(width: 1.w,),
                      ]),
                    
                    ),
              );
          })),
    );
  }
}
