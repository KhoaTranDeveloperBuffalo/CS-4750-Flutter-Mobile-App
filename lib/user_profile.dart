import 'package:cs4750_mobileapp/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:cs4750_mobileapp/home_screen.dart';
import 'package:cs4750_mobileapp/card_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfilePage extends StatefulWidget {

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.qrcode),label: "QR_code"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userFriends),label: "Friends"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cog),label: "Settings"),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
