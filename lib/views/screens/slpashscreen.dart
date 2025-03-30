import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_study_app/views/screens/intro_page.dart';

var time = 0;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      Duration(seconds: 3),
          (timer) {
        setState(() {
          if (mounted) {
            setState(() {
              time = timer.tick;
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => FadeInLeft(
                  animate: true,
                  duration: Duration(milliseconds: 100),
                  child: IntroPage(),
                  onFinish: (direction) => IntroPage(),
                ),
              ));
            });
          }
        });
      },
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF000428), Color(0xFF004e92)], // Deep space blue gradient
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              image: AssetImage('assets/image/logo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            'SolarX Study',
            style: GoogleFonts.orbitron(
              textStyle: TextStyle(
                color: Color(0xFF66FCF1), //
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 35,
              ),
            ),
          )
              .animate()
              .flipV(
            duration: 1500.ms,
          )
              .scale(),
        ),
      ),
    );
  }
}
