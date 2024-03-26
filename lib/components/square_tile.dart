import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final double height;

  const SquareTile({super.key, required this.imagePath, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 229, 224, 224)),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: Image.asset(
        imagePath,
        height: height,
      ),
    );
  }
}
