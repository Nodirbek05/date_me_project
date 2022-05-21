
import 'package:dateme/screens/onborading/entering_page.dart';
import 'package:dateme/screens/onborading/scroll_entering_page.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const OnboardingPage(),
        );
      case '/entering': 
        return MaterialPageRoute(
          builder: (_) => const EnteringPage(),
        );
      
    }
  }
}
