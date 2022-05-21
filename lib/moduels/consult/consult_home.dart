import 'package:ayurveda/moduels/lab_test/lab_test_all.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class ConsultHome extends StatelessWidget {
  ConsultHome({Key? key}) : super(key: key);

  final _searchConsult = TextEditingController();

  List<String> images = [
    'assets/images/colf.png',
    'assets/images/nutr.png',
    'assets/images/pain.png',
    'assets/images/phys.png',
    'assets/images/pedia.png',
    'assets/images/gynec.png',
    'assets/images/homeo.png',
    'assets/images/dentist.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Consult Specialist"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),

              ///Search
              SizedBox(
                width: 90.w,
                child: Stack(
                  children: [
                    Container(
                      height: 6.h,
                      width: 90.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: whiteclr,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                  2.0,
                                  2.0,
                                ),
                                spreadRadius: 2.0,
                                blurRadius: 2.0)
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              controller: _searchConsult,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Field can\'t be empty';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                constraints: BoxConstraints(maxWidth: 100.w),
                                contentPadding: EdgeInsets.all(15),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                    color: hinttxtclr, size: 25),
                                hintText: "Search Clinic",
                                hintStyle: hintTxtStyle,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 25.w,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  // border: Border.all(width: 1.0,color: Colors.black12,),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: btngreen,
                                  boxShadow: [
                                    BoxShadow(
                                      color: btngreen,
                                      offset: Offset(
                                        1.0,
                                        1.0,
                                      ),
                                    )
                                  ]),
                              child: const Text(
                                'Search',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: whiteclr,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

              Divider(thickness: 1.0, color: hinttxtclr),
              SizedBox(
                height: 2.h,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  itemCount: images.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => LabTest());
                      },
                      child: Image.asset(images[index], fit: BoxFit.fill),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
