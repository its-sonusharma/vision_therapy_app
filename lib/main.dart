import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:i_orbit/screens/home.dart';
import 'package:i_orbit/screens/welcome/signscreen.dart';
import 'components/db.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initilizaeDb();

  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=> Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => Home(),
        )
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/flashscreen1.jpg'),fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}


