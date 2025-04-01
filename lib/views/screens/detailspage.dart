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
    PageController pageController =
    PageController(initialPage: context.watch<HomeProvider>().seletcedindex);
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
        child: SafeArea(
          child: PageView(
            controller: pageController,
            children: context
                .watch<HomeProvider>()
                .solarSystemList
                .map((planet) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      FutureBuilder(
                        future: Future.delayed(Duration(milliseconds: 50)),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.done) {
                            return Image.asset(
                              planet.image,
                              width: 300,
                              height: 300,
                            )
                                .animate()
                                .slideUp( duration: 1700.ms)
                                .fadeIn(duration: 1200.ms)
                                .flipInY(duration: 1500.ms);
                          }
                          return SizedBox();
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            planet.name,
                            style: GoogleFonts.orbitron(
                              textStyle: TextStyle(
                                color: Color(0xFF66FCF1),
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),
                          )
                              .animate()
                              .slideX(begin: 1.0, end: 0, duration: 1000.ms)
                              .fadeIn(duration: 800.ms)
                              .flipX(duration: 1000.ms),
                          SizedBox(height: 10),
                          Divider(color: Colors.white70, thickness: 1.5),
                          SizedBox(height: 10),
                          detailRow("Type", planet.type)
                              .animate()
                              .slideY(begin: 2.0, end: 0, duration: 1000.ms)
                              .fadeIn(duration: 600.ms)
                              .flip(duration: 800.ms),
                          detailRow("Composition", planet.composition)
                              .animate()
                              .slideX(begin: 2.0, end: 0, duration: 1000.ms)
                              .fadeIn(duration: 600.ms)
                              .flipY(duration: 800.ms),
                          detailRow("Diameter (km)", planet.diameterKm.toString())
                              .animate()
                              .slideX(begin: 2.0, end: 0, duration: 1000.ms)
                              .fadeIn(duration: 600.ms)
                              .flipV(duration: 800.ms),
                          detailRow("Mass (kg)", planet.massKg.toString())
                              .animate()
                              .slideX(begin: 2.0, end: 0, duration: 1000.ms)
                              .fadeIn(duration: 600.ms)
                              .flipX(duration: 800.ms),
                          detailRow("Orbital Period (Days)", planet.orbitalPeriodDays.toString())
                              .animate()
                              .slideX(begin: 2.0, end: 0, duration: 1000.ms)
                              .fadeIn(duration: 600.ms)
                              .flip(duration: 800.ms),
                          detailRow("Orbital Period (Years)", planet.orbitalPeriodYears.toString())
                              .animate()
                              .slideX(begin: 2.0, end: 0, duration: 1000.ms)
                              .fadeIn(duration: 600.ms)
                              .flipY(duration: 800.ms),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ))
                .toList(),
          ),
        )

      ),
    );
  }

  Widget detailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            // Allows text to wrap if needed
            child: Text(
              title + ":",
              style: GoogleFonts.orbitron(
                textStyle: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              overflow: TextOverflow.ellipsis, // Prevents overflow
              maxLines: 2, // Keeps text in a single line
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: GoogleFonts.orbitron(
                textStyle: TextStyle(
                  color: Color(0xFF66FCF1),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              overflow: TextOverflow.ellipsis, // Prevents overflow
              maxLines: 2, // Keeps text in a single line
              textAlign: TextAlign.right, // Aligns the value text to the right
            ),
          ),
        ],
      ),
    );
  }
}
