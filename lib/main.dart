// ignore_for_file: avoid_print


import 'package:flutter/material.dart';

import 'create_account.dart';
import 'home_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      routes: {
        "home_screen":(context) => const HomeScreen(),
        "creat_account":(context) => const New_Account(),
      },
    );
  }
  
}


