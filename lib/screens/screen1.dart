import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_exam/screens/list_view/list_view_horizontal.dart';
import 'package:ui_exam/screens/list_view/list_view_horizontal3.dart';
import 'package:ui_exam/screens/screen2.dart';

import 'list_view/list_view_horizontal2.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = "Screen1";
  List<String> names = [
    "Art",
    "Business",
    "Comedy",
    "Drama",
    "Documentary"
  ];

   Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/logo.png"),
              GestureDetector(
                  child: Icon(
                Icons.settings,
                color: Color(0xFF4838D1),
              )),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 24, right: 24),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Categories",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xFF010104),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "See more",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xFF4838D1),
                    fontWeight: FontWeight.w500),
              ),
            ]),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Container(
                width: 382,
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListViewHorizontal3(titleName: names[index]);
                  },
                  itemCount: names.length, separatorBuilder: (context, index) => SizedBox(width: 16,),),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended For You",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xFF010104),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "See more",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color(0xFF4838D1),
                      fontWeight: FontWeight.w500),
                ),
              ]),
            SizedBox(height: 16,),
            Container(
              child: Container(
                height: 200,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ListViewHorizontal(imageName: 'poster1');
                    },
                    itemCount: 3, separatorBuilder: (context, index) => SizedBox(width: 16,),),
              ),
            ),
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Best Seller",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xFF010104),
                      fontWeight: FontWeight.w500),),
                Text(
                  "See more",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color(0xFF4838D1),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Container(
              child: Container(
                height: 134,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListViewHorizontal2(imageName: 'poster1');
                  },
                  itemCount: 3, separatorBuilder: (context, index) => SizedBox(width: 16,),),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(

      backgroundColor: Colors.white,
      selectedItemColor: Color(0xFF4838D1),
      selectedLabelStyle: TextStyle(color: Color(0xFF4838D1)),
      currentIndex: 0,
      onTap: (value) {
        if(value == 2){
          Navigator.pushReplacementNamed(context, Screen2.routeName);
        }
        return;
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search) , label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.library_add) , label: "Library"),
      ]),
    );
  }
}
