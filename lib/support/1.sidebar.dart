import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_project/6.detail_homepage.dart';

class SidebarState extends StatelessWidget {
  const SidebarState ({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 288,
        height: double.infinity,
        color: Color.fromARGB(255, 160, 137, 137),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [

                //profil
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      CupertinoIcons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "Louise Cardenburgh",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Dokter",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),

                //jarak
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 23, bottom: 15),
                  child: Divider(
                    color: Colors.white,
                    height: 4,
                  ),
                ),

                //content 1
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      child: Column(
                        children: [
                          ListTile(
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: Icon(CupertinoIcons.home, color: Colors.white, size: 30,),
                            ),
                            title: Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 18, 
                                fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => detailHome()));
                            },
                          ),

                          ListTile(
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: Icon(CupertinoIcons.home, color: Colors.white, size: 30,),
                            ),
                            title: Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 18, 
                                fontWeight: FontWeight.bold),
                            ),
                          ),

                          ListTile(
                            leading: SizedBox(
                              height: 40,
                              width: 40,
                              child: Icon(CupertinoIcons.home, color: Colors.white, size: 30,),
                            ),
                            title: Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 18, 
                                fontWeight: FontWeight.bold),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
      ),
    );
  }
}