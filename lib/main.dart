import 'package:flutter/material.dart';
// import 'package:todolist_project/1.splashscreen.dart';
import 'package:todolist_project/5.homepage.dart';

import '1.splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODOLIST',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        // "/":(context) => homepage(),
        "/":(context) => splashscreen(),
      },
    );
  }
}

