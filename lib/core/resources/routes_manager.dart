import 'package:report_excel/main_view.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String main = "/";
}

class RouterGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.main:
        return MaterialPageRoute(builder: (_) => const MainView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Not Found Route'),
        ),
        body: const Center(
          child: Text('Not Found Route'),
        ),
      ),
    );
  }
}
