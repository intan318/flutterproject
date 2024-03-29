import 'package:flutter/material.dart';
import 'package:flutterproject/grid.dart';
import 'package:flutterproject/login.dart';
import 'package:flutterproject/main1.dart';
import 'package:flutterproject/splashscreen.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Intan Yoshana",
      debugShowCheckedModeBanner: false,
      home: GridViewPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold itu sama kyk activity di AS
    return Scaffold(
      appBar: AppBar(title: Text('Owl'),
      leading: Icon(Icons.home),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search),
                   onPressed: (){
                     print('Click Search');
                   },),
        IconButton(icon: Icon(Icons.access_alarm), onPressed: () {},),
        
        Icon(Icons.settings)
      ],
      ),
      body: LoginPage()
            //  Center(
            //   child: Row(
            //     children: <Widget>[
            //       Padding(padding: EdgeInsets.all(100),),
            //       Text('Intan Yoshana'),
            //       Checkbox(value: true, onChanged: (bool value) {},)
            //     ],
            //   ),
            // ),
          );
        }
      }
    

