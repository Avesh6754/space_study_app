import 'package:animate_do/animate_do.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space_study_app/provider/home_provider.dart';
import 'package:space_study_app/views/screens/detailspage.dart';

var solar = [];

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );

    // Play animation only once
    _controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeProvider>(context, listen: false).fetchSolarData();
    });
  }

  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8, left: 8),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF66FCF1), width: 2),
            ),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/image/profile.jpg'),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome 👋",
              style: GoogleFonts.orbitron(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  letterSpacing: 0.5,
                  color: Color(0xFF66FCF1),
                ),
              ),
            ),
            Text(
              "Mark Smith",
              style: GoogleFonts.orbitron(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  letterSpacing: 0.5,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            image: AssetImage('assets/image/home.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ScaleTransition(
                scale: _animation,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 160,
                    // Defined height
                    width: double.infinity,
                    // Full width
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white30, width: 1.5),
                      // Subtle border
                      borderRadius: BorderRadius.circular(20),
                      // Soft rounded corners
                      image: DecorationImage(
                        image: AssetImage('assets/image/banner.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black54, BlendMode.darken), // Subtle overlay
                      ),
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    // Balanced padding
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Explore the Cosmos:\nYour Gateway to the Universe',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.orbitron(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              shadows: [
                                Shadow(
                                    color: Colors.black87,
                                    blurRadius: 4,
                                    offset: Offset(1, 1)),
                                // Text shadow for contrast
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 12), // Spacing between text and button
                        ElevatedButton(
                          onPressed: () {
                            // Add Navigation or Action Here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            // Transparent Button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              // Rounded Button
                              side: BorderSide(
                                  color: Color(0xFF66FCF1),
                                  width: 1.5), // White Border
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 10),
                            // Button Padding
                            elevation: 2, // Slight Elevation
                          ),
                          child: Text(
                            'Explore',
                            style: TextStyle(
                              color: Color(0xFF66FCF1),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      context.watch<HomeProvider>().solarSystemList.length,
                  itemBuilder: (context, index) {



                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            // First animate the container
                            FutureBuilder(
                              future:
                                  Future.delayed(Duration(milliseconds: 100)),
                              // Delay before next animation
                              builder: (context, snapshot) {
                                return Container(
                                  height: 300,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, bottom: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          context.watch<HomeProvider>().solarSystemList[index].name,
                                          style: GoogleFonts.orbitron(
                                            textStyle: TextStyle(
                                                color: Color(0xFF66FCF1),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          context.watch<HomeProvider>().solarSystemList[index].type,
                                          style: GoogleFonts.orbitron(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          'Diameter : ${context.watch<HomeProvider>().solarSystemList[index].diameterKm.toString()}',
                                          style: GoogleFonts.orbitron(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          'Gravity : ${context.watch<HomeProvider>().solarSystemList[index].gravityMs2.toString()}',
                                          style: GoogleFonts.orbitron(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(height: 12),
                                        // Spacing between text and button
                                        ElevatedButton(
                                          onPressed: () {
                                            context.read<HomeProvider>().changeIndex(index);
                                            Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => FadeInLeft(
                                                animate: true,
                                                duration: Duration(milliseconds: 100),
                                                child: DetailsPage(),
                                                onFinish: (direction) => DetailsPage(),
                                              ),
                                            ));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                            // Transparent Button
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              // Rounded Button
                                              side: BorderSide(
                                                  color: Color(0xFF66FCF1),
                                                  width: 1.5), // White Border
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24, vertical: 10),
                                            // Button Padding
                                            elevation: 2, // Slight Elevation
                                          ),
                                          child: Text(
                                            'Explore',
                                            style: TextStyle(
                                              color: Color(0xFF66FCF1),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                    .animate()
                                    .slideX(
                                        begin: 2.0, end: 0, duration: 1700.ms)
                                    .fadeIn(duration: 1200.ms)
                                    .flipInX(duration: 1500.ms);
                              },
                            ),
                            FutureBuilder(
                              future:
                                  Future.delayed(Duration(milliseconds: 1500)),
                              builder: (context, snapshot) {
                                return Positioned(
                                    top: -50,
                                    left: 50,
                                    child: Image.asset(
                                      context.watch<HomeProvider>().solarSystemList[index].image,
                                      width: 160,
                                      height: 160,
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
                        SizedBox(width: 20),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
