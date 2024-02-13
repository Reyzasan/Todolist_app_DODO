import 'package:flutter/material.dart';
import 'package:todolist_project/5.homepage.dart';

class SignUp extends StatefulWidget{
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 180.0),
        child: Column(
          children: [

            //Judul
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 50, 
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),

            //E-mail
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60.0),
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2)
                      )
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: 
                      [
                      TextFormField(
                        style: TextStyle(color: Colors.white), // Mengatur warna teks input
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white), // Mengatur warna teks label
                          hintText: "E-mail",
                        ),
                      ),
                    ],
                    ),
                  ),
                ),
              ],
            ),

            //Username
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2)
                      )
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: 
                      [
                      TextFormField(
                        style: TextStyle(color: Colors.white), // Mengatur warna teks input
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white), // Mengatur warna teks label
                          hintText: "Username",
                        ),
                      ),
                    ],
                    ),
                  ),
                ),
              ],
            ),

            //Password
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2)
                      )
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: 
                      [
                      TextFormField(
                        style: TextStyle(color: Colors.white), // Mengatur warna teks input
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white), // Mengatur warna teks label
                          hintText: "Password",
                        ),
                      ),
                    ],
                    ),
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => homepage() //back ke menu ini juga
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
    );
  }
}