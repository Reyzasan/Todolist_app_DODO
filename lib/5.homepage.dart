import 'package:flutter/material.dart';
import 'package:todolist_project/6.detail_homepage.dart';
import 'package:todolist_project/support/1.sidebar.dart';
import 'package:todolist_project/support/2.select.dart';

class homepage extends StatelessWidget{
  const homepage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: SidebarState(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //buat kasih border radius
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20), 
            bottomRight: Radius.circular(20),
          ),
        ),
        // elevation: 50.0,
        toolbarHeight: 80,
         //atur tinggi appbar
      ),
      
      body: 
      Column(
        children: [
          Select(),
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      
                        //box conten
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            width: 370,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Color.fromARGB(255, 211, 151, 151), width: 3),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 92, 79, 79).withOpacity(0.9),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 5)
                                )
                              ]
                            ),
                      
                            child: Row(
                              children: [
                                //Isi konten
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    border: Border.all(color: Colors.white, width: 3),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 2,
                                        offset: Offset(0, 2),
                                      )
                                    ]
                                  ),
                                ),
                      
                                //box content
                                Container(
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => detailHome()));
                                        },
                                        child: 
                                        Container(
                                          width: 258,
                                          height: 94,
                                          margin: EdgeInsets.only(left: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                  
                                  
                                          //Style Teks
                                          child: Container(
                                            margin: EdgeInsets.only(top: 10,left: 20),
                                            child: Row(
                                              children: [
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    //Text Utama
                                                    Text(
                                                      "APA AJA", 
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                      
                                                    //Teks anakan
                                                    Text(
                                                      "TIME :", 
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}