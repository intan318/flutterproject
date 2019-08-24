import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/logo.png',
            height: 100,
            width: 100,
          ),
        ),
        Text("Log In to Your Account"),
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
            child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                    hintText: 'E-mail',
                    suffixIcon: Icon(Icons.person, color: Colors.blue),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide(color: Colors.blue),
                    )))),
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
            child: TextFormField(
                obscureText: true,
                autofocus: false,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.lock, color: Colors.blue),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide(color: Colors.blue),
                    )))),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: SizedBox(
            width: double.infinity,
            height: 24,
            child: RaisedButton(
            color: Colors.blue,
            child: Text(
              "Log In",
              style: TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.w400, color: Colors.black),
            ),
            onPressed: () {},
          )),
        ),

        Padding(
          padding: const EdgeInsets.only(top:8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Register account", style: TextStyle(color: Colors.blue, fontSize: 16.0, fontWeight: FontWeight.w300)),
              Text("Forgot password", style: TextStyle(color: Colors.blue, fontSize: 16.0, fontWeight: FontWeight.w200))
            ],
          ),
        )
      ],
    );
  }
}
