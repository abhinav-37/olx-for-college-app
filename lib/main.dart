import 'package:flutter/material.dart';
import 'package:olx_iete/constants.dart';
import 'package:olx_iete/screens/bottom_navigation_screen.dart';
import 'package:olx_iete/screens/login_screen.dart';
import 'package:olx_iete/screens/register_user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: CustomColors.orangeColor,
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationScreen(),
    );
  }
}
