import 'package:flutter/material.dart';

class ListViewHorizontal3 extends StatelessWidget {
  String titleName;

  ListViewHorizontal3({required this.titleName, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF5F5FA),
          borderRadius: BorderRadius.circular(12)),
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text("$titleName"),
    );
  }
}
