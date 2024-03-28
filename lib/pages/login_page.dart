// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:loginpage/components/my_button.dart';
import '../components/input_filed.dart';
import '../components/my_button.dart';
import '../components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Center(
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),

                  ///MAIN ICON
                  Icon(Icons.login,
                      size: 100, color: Color.fromARGB(255, 104, 151, 213)),

                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome back ,',
                          style: TextStyle(
                              color: Color.fromARGB(255, 104, 151, 213),
                              fontSize: 18)),
                      Text(' you\'ve been missed!',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 18))
                    ],
                  ),
                  //TEXT for wishing....

                  SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //username
                  InputField(
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false,
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  //password
                  InputField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  //forgot password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot password?',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16))
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //Sign In Button
                  MyButton(),

                  SizedBox(height: 50),

                  //continue with
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Or continute with",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 15),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 35,
                  ),

                  //icons of google and fb to sign in
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(
                          imagePath: 'assests/icons/google.png', height: 45),
                      SizedBox(
                        width: 15,
                      ),
                      SquareTile(
                        imagePath: 'lib/assests/icons/fb.png',
                        height: 50,
                      )
                    ],
                  ),

                  //register now..
                  Row(
                    children: [
                      Text("Not a member?",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 16)),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Regr Now",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        )));
  }
}
