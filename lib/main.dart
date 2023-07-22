// ignore_for_file: non_constant_identifier_names

//import 'package:chien/theme.dart';
import'package:flutter/material.dart';

import 'welcome.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Welcome(),
  //      '/nouvellePage': (context) => Welcome(),
      },
    );
  }
}

// Écran de départ
//get Navigator.pushNamed(context, '/');



//void main(){
 // runApp(const MyApp());
//}

//class MyApp extends  StatelessWidget {
 // const MyApp({super.key});

  //@override
  //Widget build(BuildContext context){
   // return MaterialApp(
    //  title: 'FasDog',
    //  debugShowCheckedModeBanner: false,
     // theme: lightThemeData(context),
      //darkTheme: darkThemeData(context),
     // home:const MyApp(),
    //);
  //}
  
  //lightThemeData(BuildContext context) {}
//}