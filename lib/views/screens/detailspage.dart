import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:space_study_app/modal/spacemodal.dart';
import 'package:space_study_app/provider/home_provider.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage({super.key});



  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "Detail",
          style: GoogleFonts.orbitron(
            textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              color: Color(0xFF66FCF1),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            image: AssetImage('assets/image/deati.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child:SafeArea(
          child: Column(
            children: [
              FutureBuilder(
                future:
                Future.delayed(Duration(milliseconds: 1500)),
                builder: (context, snapshot) {
                  return Positioned(
                      top: -50,
                      left: 50,
                      child: Image.asset(
                       context.watch<HomeProvider>().solarSystemList[context.watch<HomeProvider>().seletcedindex].image,
                        width: 350,
                        height:350,
                      )
                          .animate()
                          .slideY(
                          begin: 2.0,
                          end: 0,
                          duration: 1700.ms)
                          .fadeIn(duration: 1200.ms)
                          .flipInY(duration: 1500.ms));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
