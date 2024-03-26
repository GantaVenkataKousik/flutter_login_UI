import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 70, 146, 208),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )));
  }
}
