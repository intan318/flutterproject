import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutterproject/main.dart';


//pake stateful krn nanti ada pergantian boolean dr loading ke loaded

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    bool loading = true;
    
    return SplashScreen.navigate(
      name: 'assets/intro.flr',
      next: MyHomePage(),
      until: () => Future.delayed(Duration(seconds: 2),(){
        setState(() {
         loading = false; 
        });
      }),
     isLoading: loading,
     loopAnimation: '1', 
     endAnimation: '1',
     startAnimation: '1',
     ); 
  }
}