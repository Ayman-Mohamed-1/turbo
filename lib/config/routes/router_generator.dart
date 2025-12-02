import 'package:flutter/material.dart';
import 'package:turbo/config/routes/app_router.dart';
import 'package:turbo/config/routes/router_transitions.dart';
import 'package:turbo/features/auth/modules/login/login_view.dart';
import 'package:turbo/features/auth/modules/register/home_view.dart';

class RouterGenerator {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouters.loginView:
        return RouterTransitions.build(LoginView());
      // MaterialPageRoute(builder: (context) => LoginView());
      case AppRouters.homeView:
        return MaterialPageRoute(builder: (context) => HomeView());
      default:
        return RouterTransitions.buildVertical(
          Scaffold(body: Center(child: Text("No Route"))),
        );
    }
  }
}
