import 'package:flutter/material.dart';

class ListViewHorizontal extends StatelessWidget {
  String imageName;
   ListViewHorizontal({required this.imageName,super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/$imageName.png" , height: 300,);
  }


}
