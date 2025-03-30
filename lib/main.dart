import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space_study_app/provider/home_provider.dart';
import 'package:space_study_app/views/screens/intro_page.dart';
import 'package:space_study_app/views/screens/slpashscreen.dart';


void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),

        },
      ),
    );
  }
}
