import 'package:flutter/material.dart';
import 'package:turbo/config/routes/app_router.dart';
import 'package:turbo/config/routes/router_generator.dart';
import 'package:turbo/core/utils/di.dart';

void main() {
  setupDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouters.loginView,
      onGenerateRoute: RouterGenerator().onGenerateRoute,
    );
  }
}
