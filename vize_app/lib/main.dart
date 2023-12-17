// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';
import 'screens/loginScreen.dart';
import 'screens/profileScreen.dart';
import 'screens/registerScreen.dart';
import 'screens/welcomeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home':(context) => HomeScreen(),
        '/login':(context) => LoginScreen(),
        '/register':(context) => RegisterScreen(),
        '/profile':(context) => ProfileScreen(),
        '/welcome':(context) => WelcomeScreen(),
      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

    );
  }
}

