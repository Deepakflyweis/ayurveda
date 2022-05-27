

import 'package:ayurveda/moduels/appointment/cancelled_screen.dart';
import 'package:ayurveda/moduels/appointment/completed_screen.dart';
import 'package:ayurveda/moduels/appointment/upcoming_screen.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
 
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

import '../../utils/app_color.dart';

class AppointmentIndex extends StatefulWidget {
   AppointmentIndex({Key? key}) : super(key: key);

  @override
  State<AppointmentIndex> createState() => _AppointmentIndexState();
}

class _AppointmentIndexState extends State<AppointmentIndex> with SingleTickerProviderStateMixin {

  late TabController _tabController;


  @override
  void initState() {
    _tabController =   TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: CustomAppbar(title: "Appointments"),         
        body: Column(
          children: [
            SizedBox(height: 2.h,),
            TabBar(
                labelColor: btngreen,                 
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3.0,
                controller: _tabController,
                tabs:   [
                  Tab(
                      child: Chip(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' Upcoming ',style: TextStyle(color: btngreen)),
                  )),
                  Tab(
                      child: Chip(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' Completed',style: TextStyle(color: btngreen)),
                  )),
                  Tab(
                      child: Chip(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: btngreen, width: 1),
                              borderRadius: BorderRadius.circular(20),
                        ),
                       label: Text(' Cancelled ',style: TextStyle(color: btngreen)),
                  )),

                ]
            ),
            SizedBox(height: 2.h,),
            Expanded(
              child: TabBarView(
                children: const [
                  UpcomingScreen(),
                  CompletedScreen(),
                  CancelledScreen(),

                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
