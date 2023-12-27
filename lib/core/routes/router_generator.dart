import 'package:flutter/material.dart';
import 'package:medicalapp/core/routes/routes.dart';
import 'package:medicalapp/view/call_view.dart';
import 'package:medicalapp/view/detail_view.dart';
import 'package:medicalapp/view/homeview.dart';
import 'package:medicalapp/view/loginview.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeView());

      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
        case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginView());
         case Routes.detail:
        return MaterialPageRoute(builder: (_) => const DetailView());
                 case Routes.callview:
        return MaterialPageRoute(builder: (_) => const CallView());
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }
}
