import 'package:flutter/material.dart';
import 'view/page/page.dart';

class XRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        return MaterialPageRoute(builder: (_) => SecondPage());
      case '/loginpemantau':
        // return MaterialPageRoute(builder: (_) => LogInPemantauPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}.'),
            ),
          ),
        );
    }
  }
}