import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '2.Login_Signup.dart';
// import 'package:todolist_project/main.dart';

void main() => runApp(const splashscreen());

class splashscreen extends StatefulWidget{
  const splashscreen({super.key});
  @override
  State<splashscreen> createState() => _splashscreenstate();
}

class _splashscreenstate extends State<splashscreen> with TickerProviderStateMixin{
  late final AnimationController _controller;

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  start()));
    });
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight, 
            colors: [Color.fromARGB(255, 10, 90, 21),Color.fromARGB(255, 255, 252, 93)]
          ),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('asset/Animation1.json', 
              controller: _controller, 
              onLoaded: (composition) {
                _controller
                ..duration = composition.duration
                ..forward();
              }
              ),
              Text(
                "DODO", 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 40,
                ),
              ),
            ],
            ),
        ),
    );
  }
}