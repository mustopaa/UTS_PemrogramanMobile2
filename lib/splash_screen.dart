import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_uts/home_page.dart';
import 'package:project_uts/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () =>Navigator.push(
      context, MaterialPageRoute(builder: (context) => LoginPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [Color(0xFFFF8008),
          Color(0xFFCE1010),
          ],
          ),

        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('images/Agri.png',
            height: 300.0,
            width: 300.0,
            ),
            Text("Selamat Datang di Agriculture Tech",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              ),
              ),
              CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}