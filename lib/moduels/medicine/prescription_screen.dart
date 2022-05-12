
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({Key? key}) : super(key: key);

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
          title: Text('Prescriptions',style: TxtStyleAW),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 2.h,),

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
                                  1.0,
                                  1.0,
                                ),
                              )]
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                // controller: _searchMedProducts,
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
                                  prefixIcon: Icon(Icons.search,color: hinttxtclr),
                                  hintText:  "Search medicines & health products" ,
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
                                      bottomRight:  Radius.circular(10),
                                    ),
                                    color: btngreen,
                                    boxShadow: [
                                      BoxShadow(
                                        color: btngreen,
                                        offset: Offset(
                                          1.0,
                                          1.0,
                                        ),

                                      )]
                                ),
                                child: const Text('Search',
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
                SizedBox(height: 2.h,),
                Divider(thickness: 0.5,color: blckclr,),
                SizedBox(height: 1.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('My Uploads (3)',style: TxtStyleB,)),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                  ],
                ),
                SizedBox(height: 1.h,),
                Divider(thickness: 5.0,color: divclr),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Dr. Martin (2)',style: TxtStyleB,)) ,
                SizedBox(height: 1.h,),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                  ],
                ),
                Divider(thickness: 5.0,color: divclr),

                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Dr. Rahul (4)',style: TxtStyleB,)),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                    Icon(Icons.picture_as_pdf,color: redtxtclr,size: 10.h,),
                  ],
                ),
                SizedBox(height: 10.h,),
                InkWell(
                  onTap: () {
                    // Get.to(() => MedPlacedSucessfully());
                  },
                  child: Container(
                    width: 50.w,
                    height: 5.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: btngreen,
                    ),
                    child: Text('Upload Prescription',style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 5.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
