import 'package:flutter/material.dart';
import 'package:tatware_tast/presentation/screens/chat_screen/chat_screen.dart';
import 'package:tatware_tast/presentation/screens/get_start_screen/get_start_screen.dart';
import 'package:tatware_tast/presentation/screens/home_screen/home_screen.dart';
import '../screens/start_screen/start_screen.dart';


class RoutesManager {
  static const String startRoute = '/start';
  static const String getStartRoute = '/getStart';
  static const String chatRoute = '/chat';
  static const String homeRoute = '/home';
}

class RoutesGenerator {

  static Route<dynamic> getRoutes (RouteSettings settings)
  {
    switch (settings.name)
    {
      case RoutesManager.startRoute :
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case RoutesManager.getStartRoute :
        return MaterialPageRoute(builder: (_) => const GetStartScreen());
      case RoutesManager.chatRoute :
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case RoutesManager.homeRoute :
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default :
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute (){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(
          "undefinedRoute",
        ),
      ),
      body: const Center(
        child: Text(
          "undefinedRoute",
        ),
      ),
    ));

  }

}