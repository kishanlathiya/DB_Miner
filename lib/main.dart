import 'package:flutter/material.dart';
import 'package:pr7_2_dbminer/splash_screen.dart';
import 'animal_page.dart';
import 'homepage.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "splash_screen",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Homepage(),
        "splash_screen": (context) => const SplashScreen(),
        "animal_page": (context) => const AnimalPage(),
      },
    ),
  );
}
