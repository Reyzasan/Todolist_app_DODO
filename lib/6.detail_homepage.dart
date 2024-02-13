import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_project/5.homepage.dart';

class detailHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => homepage())));
          },
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.2),
            child: Icon(CupertinoIcons.back),
          ),
        ),
     ),

     
      body: Container(
        child: Column(
          children: [
            Text(
              "Detail Home",
            )
          ],
        ),
      ),
    );
  }
}