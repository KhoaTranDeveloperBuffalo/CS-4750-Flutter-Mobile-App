import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              child: Expanded(
                flex: 20,
                child: Image(
                  image: AssetImage('assets/LPL_logo.png'),
                  color: Color.fromRGBO(255,0,0,1),
                ),
              ),
            ),

          ],
        ));
  }
}