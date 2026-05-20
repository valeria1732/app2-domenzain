import 'package:flutter/material.dart';
import 'package:hello_app/config/theme/app_theme.dart';
import 'package:hello_app/config/router/app_router.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectColor: 1 ).getTheme(),
    );
  }
}