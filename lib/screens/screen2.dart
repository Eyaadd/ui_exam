import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_exam/screens/list_view/feature_slider.dart';

class Screen2 extends StatefulWidget {
  static const String routeName = "Screen2";

  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF027A48),

          items: [
        BottomNavigationBarItem(icon: buildBottomNavBar(), label: "",),
        BottomNavigationBarItem(icon: Icon(Icons.app_registration), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: ""),
      ]
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/logo2.png"),
                const SizedBox(width: 8),
                Text(
                  "Moody",
                  style: GoogleFonts.elMessiri(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const Icon(Icons.notifications_none_outlined),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: ListView(
            children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const SizedBox(height: 24),

              // Greeting Section
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello, ",
                      style: GoogleFonts.elMessiri(fontSize: 16),
                    ),
                    TextSpan(
                      text: "Sara Rose, ",
                      style: GoogleFonts.elMessiri(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text("How are you feeling today?"),
              const SizedBox(height: 16),

              // Emotion Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _emotionWidget("assets/images/love.png", "Love"),
                  _emotionWidget("assets/images/cool.png", "Cool"),
                  _emotionWidget("assets/images/happy.png", "Happy"),
                  _emotionWidget("assets/images/sad.png", "Sad"),
                ],
              ),
              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: GoogleFonts.elMessiri(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: GoogleFonts.elMessiri(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF027A48),
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xFF027A48),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),

              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return FeatureSlider();
                },
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 168.0,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),

              const SizedBox(height: 16),

              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: _currentIndex,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Color(0xFF027A48),
                    dotColor: Colors.grey,
                  ),
                  onDotClicked: (index) {
                    _carouselController.animateToPage(index);
                  },
                ),
              ),

              SizedBox(height: 40),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exercise",
                        style: GoogleFonts.elMessiri(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "See more",
                            style: GoogleFonts.elMessiri(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF027A48),
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xFF027A48),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _exerciseWidget("assets/images/mind.png", "Relaxation", Color(0xFFF9F5FF)),
                          _exerciseWidget("assets/images/meditation.png", "Meditation", Color(0xFFF9F5FF)),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _exerciseWidget("assets/images/breath.png", "Breathing", Color(0xFFF9F5FF)),
                          _exerciseWidget("assets/images/yoga.png", "Yoga", Color(0xFFF9F5FF)),
                        ],
                      ),
                    ],
                  )
                  
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }

  Widget _emotionWidget(String imagePath, String label) {
    return Column(
      children: [
        Image.asset(imagePath),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _exerciseWidget(String iconPath, String label, Color color) {
    return Container(
      width: 151,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(iconPath),

          SizedBox(width:12),

          Text(label)
        ],
      ),
    );
  }

  Widget buildBottomNavBar(){
    return Container(
      child: Column(
        children: [
          Icon(Icons.home),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
                color: Color(0xFF027A48),
                borderRadius: BorderRadius.circular(100)
            ),
          )
        ],
      ),
    );
  }
}
