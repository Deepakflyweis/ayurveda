import 'package:auto_size_text/auto_size_text.dart';
 
import 'package:ayurveda/moduels/packages/package_desc.dart';
import 'package:ayurveda/moduels/packages/test_requirement.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 

class PackageDetails extends StatefulWidget {
  const PackageDetails({Key? key}) : super(key: key);

  @override
  State<PackageDetails> createState() => _PackageDetailsState();
}

class _PackageDetailsState extends State<PackageDetails> with SingleTickerProviderStateMixin{
  TextEditingController _searchPackage = TextEditingController();

  late TabController _packController;


  @override
  void initState() {
    _packController = TabController(length: 2,vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _packController.dispose();
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
          title: Text('Package Details',style: TxtStyleAW),
          actions: const [
            Icon(Icons.location_on_outlined,color: whiteclr,size: 22,),
            Center(child: Text('Mayur Vihar, New Delhi',style: TextStyle(color: whiteclr,fontSize: 10),)),
            Icon(Icons.arrow_drop_down,color: whiteclr,size: 22,),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                                2.0,
                                2.0,
                              ),
                              spreadRadius: 2.0,
                              blurRadius: 2.0
                            )]
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              controller: _searchPackage,
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
                                prefixIcon: Icon(Icons.search,color: hinttxtclr,size: 25),
                                hintText:  "Search Clinic" ,
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

              Divider(thickness: 3.0,color: hinttxtclr),
              SizedBox(height: 3.h,),
              Text('Diabetes Care',style: TxtStyleB,),
              SizedBox(height: 1.h,),
              Text('Available at Shathyu Labs',style: TxtStyleN,),
              SizedBox(height: 1.h,),
              Row(
                children: [
                  Text("₹ 499", style: TxtStyleL),
                  SizedBox(width: 2.w,),
                  const Text(
                      "₹ 1099",style: TextStyle(
                      color: hinttxtclr,
                      decoration: TextDecoration.lineThrough
                  )),
                  SizedBox(width: 2.w,),
                  const Text(
                      "54% OFF",style: TextStyle(
                      color: btngreen,
                  )),
                ],),
              SizedBox(height: 1.h,),
              InkWell(
                onTap: (){

                },
                child: Container(
                  width: 20.w,
                  height: 4.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: btngreen
                  ),
                  child: const Text("Book Now",style: TextStyle(
                    fontSize: 12,
                    color: whiteclr,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
              SizedBox(height: 2.h,),
              Divider(thickness: 5,color: divclr, ),
              SizedBox(height: 3.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Includes 30 tests",style: TxtStyleG,),
                  Icon(Icons.keyboard_arrow_down,size: 35,color: blckclr,),
                ],
              ),
              SizedBox(height: 1.h,),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder : (context, snapshot) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 3.0,bottom: 3),
                    child: Row(
                      children:     [
                        Icon(Icons.circle,color: blckclr,size: 10),
                        Expanded(
                          child: AutoSizeText('Lorem ipsum dolor sit amet, consectetur adipiscing elit.   ',
                            maxLines: 2,style: hintTxtStyle ,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 2.h,),
              Divider(thickness: 5,color: divclr, ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3.0,
                  indicatorColor: btngreen,
                  controller: _packController,
                  tabs: [
                    Tab(child: Text("Discription",style: TxtStyleB),),
                    Tab(child: Text("Test Requirement",style: TxtStyleB),),
                  ]),
             SizedBox(
               height: 25.h,
               child: TabBarView(
                 children:  const [
                   PackageDescription(),
                   TestRequirement(),
               ],
                 controller: _packController,
               ),
             ),
              SizedBox(height: 2.h,),
              Divider(thickness: 2.0,color: hinttxtclr,),
              Row(
                children: [
                  SizedBox(width: 1.w,),
                  Icon(Icons.shopping_cart_outlined,color: blckclr,size: 30,),
                  Spacer(),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 25.w,
                     height: 5.h,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       color: btngreen,
                     ),
                     alignment: Alignment.center,
                     child: const Text(
                         'View Cart',
                         style: TextStyle(fontWeight: FontWeight.bold,color: whiteclr,fontSize: 15)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 1.h,),
            ],
          ),
        ),
      ),
    );
  }
}
