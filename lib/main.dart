import 'package:examen_fra/screens/home_screen_fra.dart';
import 'package:examen_fra/routes/app_routes_fra.dart';
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
      title: 'Examen Flutter AFR',
      initialRoute: AppRoutes.initialRoute, 
      routes: AppRoutes.getAppRoutes(), 
      onGenerateRoute: AppRoutes.onGenerateRoute, 
    );
  }
}
