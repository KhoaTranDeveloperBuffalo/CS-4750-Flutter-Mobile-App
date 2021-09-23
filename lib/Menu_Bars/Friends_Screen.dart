import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 20,
              child: Image(
                  image: AssetImage('assets/LPL_logo.png')
              ),
            ),
          ],
        )
    );
  }
}