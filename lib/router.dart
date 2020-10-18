import 'package:flutter/material.dart';
import 'view/page/page.dart';

class XRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        // return MaterialPageRoute(builder: (_) => TypeSelectionPage());
      case '/loginadmin':
        // return MaterialPageRoute(builder: (_) => LogInAdminPage());
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