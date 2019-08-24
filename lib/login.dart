import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool validasi = false;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(key: _formKey, autovalidate: validasi, child: FormLogin()));
  }

  Widget FormLogin() {
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
                validator: validasiEmail,
                onSaved: (String em) {
                  email = em;
                },
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    hintText: 'E-mail',
                    suffixIcon: Icon(Icons.person, color: Colors.blue),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide(color: Colors.blue),
                    )))),
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
            child: TextFormField(
                validator: validasiPassword,
                onSaved: (String p) {
                  password = p;
                },
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
          child: Material(
            borderRadius: BorderRadius.circular(30.0),
            shadowColor: Colors.lightBlueAccent.shade100,
            elevation: 8.0,
            child: MaterialButton(
              minWidth: 200.0,
              height: 42.0,
              onPressed: () {
                _validasiInputan();
              },
              color: Colors.lightBlueAccent,
              child: Text('Log In', style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Register account",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300)),
              Text("Forgot password",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300))
            ],
          ),
        )
      ],
    );
  }

  String validasiEmail(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(email))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validasiPassword(String pass) {
    if (pass.length < 8)
      return 'Password must be at least 8 characters';
    else
      return null;
  }

  void _validasiInputan() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    } else {
      setState(() {
        validasi = true;
      });
    }
  }
}
