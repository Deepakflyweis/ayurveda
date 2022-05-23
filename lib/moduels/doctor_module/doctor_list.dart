import 'package:ayurveda/moduels/doctor_module/doctor_profile.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class DoctorListScreen extends StatefulWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  State<DoctorListScreen> createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  final _searchDoctor = TextEditingController();

  List category = [
    'Cold & Fever',
    'Nutritionist',
    'Pain & Injury',
    'Physiotherapist',
    'Pediatricians',
    'Gynecologist',
    'Homeopathy',
    'Dentist',
  ]; // Option 2

  String? _selectedLocation;
  var selectedDist = const RangeValues(0.2, 0.8);
  var selectedRating = const RangeValues(1.0, 5.0);
  var selectedYear = const RangeValues(1.0, 20.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Doctor list"),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: btngreen,
                  ),
                  Text(
                    "New Delhi",
                    style:
                        TextStyle(color: btngreen, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

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
                              controller: _searchDoctor,
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
                                hintText: "Search  ",
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
                                child: IconButton(
                                  onPressed: () {
                                    openSheet();
                                  },
                                  icon: Icon(Icons.filter_list_alt,
                                      color: whiteclr),
                                )),
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
                height: 1.h,
              ),
              SizedBox(
                width: 90.w,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {

                          Get.to(() => DoctorProfile());

                          
                        },
                        child: Container(
                            alignment: Alignment.center,
                            width: 88.w,
                            height: 12.h,
                            decoration: BoxDecoration(
                                color: whiteclr,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: hinttxtclr, width: 0.8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2,
                                    offset: Offset(2, 2),
                                  )
                                ]),
                            child: ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: btngreen,
                                radius: 40,
                                backgroundImage: NetworkImage(
                                  "https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?w=2000",
                                ),
                              ),
                              title: Text("Dr. Martin", style: TxtStyleN),
                              subtitle: Text("You: " + "Thanks a lot",
                                  style: TxtStyleL),
                              trailing: Column(
                                children: [
                                  Text("2 km", style: TxtStyleL),
                                  Container(
                                    width: 10.w,
                                    color: redtxtclr,
                                    alignment: Alignment.center,
                                    child: Text("\$50",
                                        style: TextStyle(color: whiteclr)),
                                  )
                                ],
                              ),
                            )),
                      ),
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

  void openSheet() {
    showModalBottomSheet(
        context: context, builder: ((builder) => bottomSheet(context)));
  }

  bottomSheet(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.95,
      width: screenSize.width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Wrap(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text('Filter', style: TxtStyleG)),
              SizedBox(
                height: 2.h,
              ),
              Text('Category', style: TxtStyleN),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 8.0,
                        )
                      ],
                      color: Color.fromARGB(255, 251, 251, 251),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                      child: DropdownButton<String>(
                        //style: Icons.account_box,
                        //style: TextStyle(background: ),
                        iconDisabledColor: Colors.blue,
                        isExpanded: true,
                        //underline: ,
                        hint: const Text('All'), // Not necessary for Option 1
                        value: _selectedLocation,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedLocation = newValue;
                          });
                        },
                        items: category.map((location) {
                          return DropdownMenuItem<String>(
                            child: Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text('Location', style: TxtStyleN),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 8.0,
                        )
                      ],
                      color: Color.fromARGB(255, 251, 251, 251),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 20, 0),
                      child: TextField(
                        obscureText: false,
                        // textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color.fromARGB(255, 153, 44, 44),
                          hintText: 'Current Location (Default)',
                          hintStyle: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Distance From You',
                style: TxtStyleN,
              ),
              RangeSlider(
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                values: selectedDist,
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  selectedDist.start.round().toString(),
                  selectedDist.end.round().toString(),
                ),
                onChanged: (RangeValues newvalues) {
                  setState(() {
                    selectedDist = newvalues;
                  });
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              Text('Ratings', style: TxtStyleN),
              RangeSlider(
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                values: selectedRating,
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  selectedRating.start.round().toString(),
                  selectedRating.end.round().toString(),
                ),
                onChanged: (RangeValues newvalues) {
                  setState(() {
                    selectedRating = newvalues;
                  });
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              Text('Price', style: TxtStyleN),
              SizedBox(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: const Text(
                        'From',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xffF1F1F1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "From"),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: const Text(
                        'To',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xffF1F1F1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "To"),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text('Year of Experience', style: TxtStyleN),
              RangeSlider(
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                values: selectedYear,
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  selectedYear.start.round().toString(),
                  selectedYear.end.round().toString(),
                ),
                onChanged: (RangeValues newvalues) {
                  setState(() {
                    selectedYear = newvalues;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
