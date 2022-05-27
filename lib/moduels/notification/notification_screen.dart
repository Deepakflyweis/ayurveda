import 'package:auto_size_text/auto_size_text.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';


class NotificationScreen extends StatefulWidget {
    NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

   bool isSwitched = false;


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
          title: Text('Notifications',style: TxtStyleAW),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: FlutterSwitch (
                value: isSwitched,
                height: 3.h,
                width: 13.w,
                activeColor: whiteclr,
                toggleColor: btngreen,
                inactiveColor: whiteclr,
                onToggle: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                  ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 15,right: 10,top: 15),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Today',style: TxtStyleN,)),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: 10,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context , index){
                    return ListTile(
                      leading: SizedBox(
                          width: 2.w,
                          height: 2.h,
                          child: Image.network('src',
                          fit: BoxFit.fill,   

                          errorBuilder: (context, error, stackTrace) =>
                               const Center(
                                 child: Icon(Icons.notifications_active_rounded),
                                 ),
                          ),
                          
                        ),

                      title: Text('Chat Notification',style: TxtStyleN),
                      subtitle: AutoSizeText("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.",
                      style: TxtStyleL, maxLines: 2, overflow: TextOverflow.ellipsis,
                      ),
                    );

              })
            ],
          ),
        ),
      ),
    );
  }
}
