import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  iconSize: 30,
                  color: Colors.blueGrey,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            flex: 70 ,
            child: Column(
              children: [
              ],
            ),
          ),
          Row(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}