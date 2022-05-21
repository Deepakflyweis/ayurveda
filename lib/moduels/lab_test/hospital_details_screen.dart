import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class HospitalDetailsScreen extends StatelessWidget {
  const HospitalDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: btngreen,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.arrow_back,
                size: 25,
                color: whiteclr,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/hosp.png",
                width: 90.w,
                height: 20.h,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: btngreen,
                  ),
                  Text(
                    "Apollo Hospital ",
                    style: TxtStyleN,
                  ),
                  Spacer(),
                  Container(
                    height: 3.h,
                    width: 12.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: btngreen,
                    ),
                    child: Row(
                      children: const [
                        Text('  4.5 '),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: 50.w,
                child: AutoSizeText(
                  "Lorem ipsum dolor sit amet, Full address.New Delhi, Pincode -110091",
                  maxLines: 3,
                  style: hintTxtStyle,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
                color: hinttxtclr,
                thickness: 0.8,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Discription",
                style: TxtStyleG,
              ),
              SizedBox(
                height: 2.h,
              ),
              AutoSizeText(
                "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod. dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.",
                maxLines: 4,
                style: hintTxtStyle,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Facilities",
                style: TxtStyleG,
              ),
              SizedBox(
                width: 90.w,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: btngreen,
                          ),
                          Text(
                            "Parking",
                            style: TxtStyleL,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45.w,
                      height: 5.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: btngreen,
                      ),
                      child: Text("Message",
                      style: TextStyle(color: whiteclr,fontWeight: FontWeight.w600),)),
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45.w,
                      height: 5.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: btngreen,
                      ),
                      child: Text("Call",
                      style: TextStyle(color: whiteclr,fontWeight: FontWeight.w600),)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
