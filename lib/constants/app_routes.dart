import 'package:critique_hub/data/models/profile_model.dart';
import 'package:critique_hub/ui/screens/home_screen.dart';
import 'package:critique_hub/ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case profile:
        Map<String,dynamic> args = settings.arguments as Map<String,dynamic>;
        return MaterialPageRoute(builder: (_) => ProfileScreen(isFirstUser: args['isFirstUser'], profile: args['profile']));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
