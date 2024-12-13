import 'package:examen_fra/screens/home_screen_fra.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen_fra', 
      routes: {
        'home_screen_fra': (context) => const HomeScreenFra(),
      },
    );
  }
}