import 'package:flutter/material.dart';
import 'package:project_travel/latihanmodul/latihanp5.dart';
import 'package:project_travel/latihanmodul/latihanp9_api.dart';
import 'package:project_travel/latihanmodul/pertemuan6.dart';
import 'package:project_travel/screens/detail_destinations.dart';
import 'package:project_travel/screens/home_page.dart';
import 'package:project_travel/screens/landing_page.dart';
import 'package:project_travel/screens/splash_screen.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
