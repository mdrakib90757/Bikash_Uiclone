


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Screen/homeScreen.dart';
import '../Screen/inbox_screen.dart';
import '../Screen/qr_code_screen.dart';
import '../Screen/search_screen.dart';
import '../Utils/color.dart';

class CustomNavigationbar extends StatefulWidget {
  const CustomNavigationbar({super.key});

  @override
  State<CustomNavigationbar> createState() => _CustomNavigationbarState();
}

class _CustomNavigationbarState extends State<CustomNavigationbar> {
  final List<Widget>_screen=[
    Homescreen(),
    QrCodeScreen(),
    SearchScreen(),
    InboxScreen()
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar:Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 5,
              blurRadius: 10
            )
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
        ),
        child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex=index;
              });
            },
            elevation: 50,
            selectedItemColor: AppColor().primaryColor,
         unselectedItemColor: Colors.grey.shade600,
            type: BottomNavigationBarType.fixed,
            items: [
          BottomNavigationBarItem(icon:FaIcon(
            FontAwesomeIcons.house,),
          label: "হোম"
          ),
          BottomNavigationBarItem(icon:FaIcon(
            FontAwesomeIcons.qrcode,),
              label: "QR স্ক্যান"
          ),
          BottomNavigationBarItem(icon:FaIcon(
            FontAwesomeIcons.magnifyingGlass,),
              label: "সার্চ"
          ),
          BottomNavigationBarItem(icon:FaIcon(
            FontAwesomeIcons.envelope,),
              label: "ইনবক্স"
          ),
        ]),

      )
    );
    
  }
}
