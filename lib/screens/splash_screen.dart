import 'dart:async';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {


  static const String KEYNAME = "Login";


  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  void whereToGo() async {
    //use for value Retrieve data
    var sharePref = await SharedPreferences.getInstance();
    // create variable for bool true/false value
    var isLoggedIn = sharePref.getBool(KEYNAME);
    Timer(
        const Duration(seconds: 5),
            () {
          if(isLoggedIn!=null){
            // true
            if(isLoggedIn){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen()

                ),
              );
            }
            // false
            else{
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(), // Replace with your home screen
                ),
              );
            }
          }
          // isLoggedIn == null
          else{
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(), // Replace with your home screen
              ),
            );
          }
        }




    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent.shade100, // Background color
        child: const Center(
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 59,
          ),
        ),
      ),
    );
  }
}