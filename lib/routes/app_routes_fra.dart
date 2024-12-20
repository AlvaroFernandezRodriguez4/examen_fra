import 'package:examen_fra/screens/home_screen_fra.dart';
import 'package:examen_fra/screens/listview_screen_fra.dart';
import 'package:examen_fra/screens/signin_screen_fra.dart';
import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  const MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    const MenuOption(
      route: 'home',
      icon: Icons.home,
      name: 'Home Screen',
      screen: HomeScreenFra(),
    ),
    MenuOption(
      route: 'signin_screen',
      icon: Icons.login,
      name: 'Sign In Screen',
      screen: SigninScreenFra(),
    ),
    const MenuOption(
      route: 'listview_screen',
      icon: Icons.list,
      name: 'Listview Screen',
      screen: ListviewScreenFra(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreenFra(), 
    );
  }
}

