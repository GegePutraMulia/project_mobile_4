import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_travel/screens/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 5,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingPageOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F3F5),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network(
                'https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json',
                height: 350,
                width: 350),
            Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                height: 300,
              ),
              Text(
                'ASLABTIF',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1b1b1b),
                ),
              ),
              Text(
                'TRAVEL',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1b1b1b),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
