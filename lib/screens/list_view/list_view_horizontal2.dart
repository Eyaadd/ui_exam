import 'package:flutter/material.dart';

class ListViewHorizontal2 extends StatelessWidget {
  String imageName;
   ListViewHorizontal2({required this.imageName,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 315,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFF5F5FA),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/poster1.png",fit: BoxFit.cover,)),
          ),
          SizedBox(width: 16,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Light Mage"),
              SizedBox(height: 4,),
              Text("Laurie Forest"),
              SizedBox(height: 20,),
              Image.asset("assets/images/rating.png"),
              SizedBox(height: 8),
              Text("1,000+ Listeners"),
            ],
          )
        ],
      ),
    );
  }


}
