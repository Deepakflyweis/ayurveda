import 'package:ayurveda/moduels/digonistics/book_diagnostic/test_step_4.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 

class BookStep3 extends StatefulWidget {
  const BookStep3({Key? key}) : super(key: key);

  @override
  State<BookStep3> createState() => _BookStep3State();
}

class _BookStep3State extends State<BookStep3> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Book Slots"),
        body: SingleChildScrollView(
          child: Column(
            children: [
               Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(20),
                child: const LinearProgressIndicator(
                  value: 0.75,
                  valueColor: AlwaysStoppedAnimation<Color>(btngreen),
                  backgroundColor: Colors.grey,
                )),
            const Center(
                child: Text(
              "Step 3/4",
              style: TextStyle(color: Colors.blue),
            )),
            SizedBox(
              height: 2.h,
            ),
              Image.asset('assets/images/map.png',height: 25.h,
                width: 100.w,
                fit: BoxFit.cover,),
              SizedBox(height: 2.h,),
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Schedule',style: TxtStyleN,),
                ),
              ),
               SizedBox(height: 2.h,),
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Slots',style: TxtStyleN,),
                ),
              ),
              SizedBox(height: 2.h,),

              Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Chip(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' Morning',style: TextStyle(color: btngreen)),
                        ), 

                        Chip(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: btngreen, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            label: Text(' Afternoon',style: TextStyle(color: btngreen)),
                        ),
                        
                        Chip(
                              elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' Evening',style: TextStyle(color: btngreen)),
                  ),                   
              ],
           ),      
            SizedBox(height: 2.h,),              
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Available Time',style: TxtStyleN,),
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Chip(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' 1:00 pm',style: TextStyle(color: btngreen)),
                        ), 

                        Chip(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: btngreen, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            label: Text(' 2:00 pm',style: TextStyle(color: btngreen)),
                        ),
                        
                        Chip(
                              elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' 4:00 pm',style: TextStyle(color: btngreen)),
                  ),                   
              ],
           ),      
            SizedBox(height: 2.h,),             

              SizedBox(height: 3.h,),

              InkWell(
                onTap: (){
                    Get.to(() => TestStep4());

                },
                child: Center(
                  child: Container(
                    height: 5.h,
                    width: 45.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: btngreen,
                    ),
                    child: Text('Next',style: TextStyle(color: whiteclr,fontSize: 15,fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
            ],
          ),
        ),
      ),
    );
  }
}
