// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_project_level1/Pages/Welcome.dart';
import 'package:final_project_level1/Pages/login.dart';
import 'package:final_project_level1/Pages/signup.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
    routes: {
      "/":(context) => const Welcome(),
      "/login":(context) => const Login(),
      "/signup":(context) => const Signup(),
    },
    );
  }
}

