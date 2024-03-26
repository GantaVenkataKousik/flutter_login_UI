import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class InputField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  InputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext content) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 191, 188, 188)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 143, 185, 219))),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 17, color: Colors.grey))));
  }
}
