import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_study_app/views/screens/homepage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

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
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0B0C10), // Deep Space Blue
                Color(0xFF1F2833), // Dark Nebula Gray
              ],
            ),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              image: AssetImage('assets/image/intro.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Welcome to Space Explorer',
                  style: GoogleFonts.orbitron(
                    textStyle: TextStyle(
                      color: Color(0xFF66FCF1), // Neon Blue
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 26,
                      shadows: [
                        Shadow(
                          color: Colors.blueAccent.withOpacity(0.8),
                          blurRadius: 15,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ).animate().flipInX(duration: 1500.ms).flipInY(duration: 1500.ms),

                const SizedBox(height: 15),

                Text(
                  'Embark on a journey beyond the stars and explore the vast mysteries of the universe. Discover fascinating facts about planets, galaxies, and black holes, and dive into interactive visuals that bring cosmic wonders to life.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orbitron(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 2,
                      letterSpacing: 1,
                      fontSize: 14,
                    ),
                  ),
                ).animate()
                    .slideX(begin: 1.0, end: 0, duration: 1500.ms)
                    .fadeInLeft(duration: 1200.ms)
                    .flipInX(duration: 1500.ms),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => FadeInLeft(
                        animate: true,
                        duration: Duration(milliseconds: 100),
                        child: Homepage(),
                        onFinish: (direction) => Homepage(),
                      ),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE63946), // Nebula Red
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadowColor: Colors.redAccent.withOpacity(0.5),
                    elevation: 10,
                  ),
                  child: Text(
                    "Start Exploring",
                    style: GoogleFonts.orbitron(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ).animate()
                    .slideX(begin: 2.0, end: 0, duration: 1700.ms)
                    .fadeIn(duration: 1200.ms)
                    .flipInX(duration: 1500.ms),

                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
