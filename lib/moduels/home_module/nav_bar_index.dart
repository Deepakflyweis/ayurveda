import 'package:ayurveda/moduels/appointment/appointment_index.dart';
import 'package:ayurveda/moduels/chat_module/chat_home_screen.dart';
import 'package:ayurveda/moduels/home_module/home_screen.dart';
import 'package:ayurveda/moduels/home_module/profile/profile_home.dart';
import 'package:ayurveda/moduels/notification/notification_screen.dart';  
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:flutter/material.dart';

class NavBarIndex extends StatefulWidget {
  final int index;

  NavBarIndex(int this.index);

  @override
  State<NavBarIndex> createState() => _NavBarIndexState(index);
}

class _NavBarIndexState extends State<NavBarIndex> {
  int? _currentIndex;
  final int index;

  _NavBarIndexState(this.index);

  int _currentPage = 0;
  var isProfilePage = true;

  @override
  void initState() {
    super.initState();
    _currentPage = index;
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> navigationPage = [
    HomeScreen(),
    AppointmentIndex(),
    ChatHomeScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPage.elementAt(_currentPage),
      bottomNavigationBar: _myBottombar(),
    );
  }

  _myBottombar() {
    return BottomNavigationBar(
        elevation: 2,
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteclr,        
        selectedItemColor: const Color(0xff008000),
        unselectedItemColor: const Color(0xff929292),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (int num) {
          _currentPage = num;
          setState(() {
            isProfilePage = _currentPage == 0 ? true : false;
          });
        },
        showSelectedLabels: true,
        currentIndex: _currentPage,

        items:  const [

          BottomNavigationBarItem(
             icon:   Icon(Icons.home_outlined),
             label: "Home"
          ),

          BottomNavigationBarItem(
             icon: Icon(Icons.medical_services_outlined),
             label: "Appointment"
          ),

          BottomNavigationBarItem(
             icon: Icon(Icons.chat_rounded),
             label: "Chat"
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.notifications_none_outlined),
             label: "Notifications"
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.account_circle_outlined),
             label: "Profile"
          ),
        ]
        
        );
  }
}
