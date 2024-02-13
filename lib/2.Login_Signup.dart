import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todolist_project/4.sign_up.dart';
import 'package:todolist_project/5.homepage.dart';

import '3.login.dart';
// import 'package:todolist_project/main.dart';

class start extends StatefulWidget{
  const start({super.key});
  @override
  State<start> createState() => _startState();
}

void main() => runApp(const start());

class _startState extends State<start> with TickerProviderStateMixin{
  late final AnimationController _controller;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
      vsync: this, 
      // duration: const Duration(milliseconds: 1000)  
      );
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 210, 255, 48),

        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 90,
              ),
              child: Column(
                children: [
                  //animation
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Lottie.asset('asset/LIST.json', 
                        controller: _controller, 
                        onLoaded: (composition) {
                          _controller
                          ..duration = composition.duration
                          ..forward();
                        }
                        )
                      ],
                    ),
                  ),
            
                  //Login 
                  Container(
                  height: 90,
                  width: 300,
                  margin: EdgeInsets.only(top: 90.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => Login()
                          ),
                        );
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, //warna tombol
                        onPrimary: Colors.white, //warna text
                        elevation: 5, // Tinggi bayangan tombol
                        shape: RoundedRectangleBorder( // Bentuk tombol
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: const Color.fromARGB(255, 253, 251, 251), width: 3), // Border tombol
                        ),
                        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 90), // Padding tombol
                        shadowColor: Colors.white
                      ),
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                            fontSize: 35
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            
                  //SIGNUP
                  Container(
                  height: 90,
                  width: 300,
                  margin: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => SignUp()
                          ),
                        );
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, //warna tombol
                        onPrimary: Colors.white, //warna text
                        elevation: 5, // Tinggi bayangan tombol
                        shape: RoundedRectangleBorder( // Bentuk tombol
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: const Color.fromARGB(255, 253, 251, 251), width: 3), // Border tombol
                        ),
                        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 82), // Padding tombol
                        shadowColor: Colors.white
                      ),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            fontSize: 35
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}