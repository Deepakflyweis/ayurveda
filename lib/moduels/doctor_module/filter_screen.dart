import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

 

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  
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
  var selectedRating = const RangeValues(1.0 , 5.0);
  var selectedYear = const RangeValues(1.0, 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 15, 15, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text('Filter',style: TxtStyleG)),
            SizedBox(height: 2.h,),
            Text('Category',style:  TxtStyleN),
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
                        )],
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
                      hint: const Text(
                          'All'), // Not necessary for Option 1
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
            
            SizedBox(height: 2.h,),
            Text('Location',style:  TxtStyleN),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow:   [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          1.0,
                          1.0,
                        ),
                        blurRadius: 8.0,
                      )],
                    color: Color.fromARGB(255, 251, 251, 251),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: double.infinity,
                  child: const Padding(
                    padding:  EdgeInsets.fromLTRB(30, 0, 20, 0),
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
            SizedBox(height: 2.h,),
            Text('Distance From You',style:  TxtStyleN,),
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
            SizedBox(height: 2.h,),
            Text('Ratings',style:  TxtStyleN),
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
            SizedBox(height: 2.h,),
            Text('Price',style:TxtStyleN),
              SizedBox(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding:const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child:const Text('From',style: TextStyle(
                          fontWeight: FontWeight.w500,fontSize: 18
                      ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration:const BoxDecoration(
                        color:  Color(0xffF1F1F1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child:  const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                          hintText: "From"
                        ),
                        style: TextStyle(color: Colors.black
                        ),
                      ),

                    ),
                    Container(
                      padding:EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: const Text('To',style: TextStyle(
                          fontWeight: FontWeight.w500,fontSize: 18
                      ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration:const BoxDecoration(
                          color: Color(0xffF1F1F1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "To"
                        ),
                        style: TextStyle(color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 2.h,),
            Text('Year of Experience',style:  TxtStyleN),
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
        ),
      ),
    );
  }
}
