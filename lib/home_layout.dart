
import 'package:chat_c7_str/screens/appointement/appointement_screen.dart';

import 'package:chat_c7_str/screens/login/login_screen.dart';
import 'package:chat_c7_str/screens/medical_file/medical_file_screen.dart';
import 'package:chat_c7_str/screens/more/more_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


import 'screens/home_screen/home.dart';



class HomeLayout extends StatefulWidget {

static String routeName ="HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {


    return  SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.green[100],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            title: Text("Hospitaline"),
            actions: [
              IconButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.pushReplacementNamed(
                        context, LoginScreen.routeName);
                  },
                  icon: Icon(Icons.logout,color: Colors.red,size: 29,))
            ],
          ),
       bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: Colors.white,
         unselectedItemColor: Colors.white,
         currentIndex: currentIndex,
         onTap: (index){
           currentIndex=index;
           setState(() {

           });
         },
         //backgroundColor:Colors.black,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.grey),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: "Appointments",backgroundColor: Colors.grey),
           BottomNavigationBarItem(icon: Icon(Icons.folder),label: "Medical File",backgroundColor: Colors.grey),
           BottomNavigationBarItem(icon: Icon(Icons.more_horiz_rounded),label: "More",backgroundColor: Colors.grey),
         ],
       ),
        body:tabs[currentIndex]
      ),
    );
  }
  List<Widget> tabs=[
    Home(),Appointments(),MedicalFile(),More()
  ];
}
