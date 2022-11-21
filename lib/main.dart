import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_uts/home_page.dart';
import 'package:project_uts/login.dart';
import 'package:project_uts/register.dart';
import 'package:project_uts/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agriculture Tech',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}
