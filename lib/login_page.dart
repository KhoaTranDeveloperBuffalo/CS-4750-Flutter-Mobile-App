import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 30,
            child: Image(
              image: NetworkImage('https://image.pngaaa.com/57/3489057-middle.png'),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 60,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                        'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                        'Forgot password?',
                        style: TextStyle (
                          color: Colors.red,
                        ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  width: 200,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.red),
                      ),
                      child: Text('Login'),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                  child: Text(
                      'App logo:'
                  )
              ),
              SignInButton.mini(
                buttonType: ButtonType.facebook,
                buttonSize: ButtonSize.small,
                onPressed: () {},
              ),
              SignInButton.mini(
                buttonType: ButtonType.google,
                buttonSize: ButtonSize.small,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
