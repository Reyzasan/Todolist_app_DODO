import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Select extends StatelessWidget {
  const Select ({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: 
        Row(
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(96, 33, 149, 243),
                      border: Border.all(color: Color.fromARGB(255, 163, 101, 101), width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.star_circle, 
                            color: Color.fromARGB(255, 245, 193, 22),
                            size: 35,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30,),
                            child: Text(
                              "Penting",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    
                  ),
                ],
              )
            )
          ],
        ),
    );
  }
}