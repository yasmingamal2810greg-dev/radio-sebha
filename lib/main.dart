import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/home_screen.dart';
import 'package:islami/utils/app_routes.dart';
import 'package:islami/utils/app_thems.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRouteName,
      routes: {
        AppRoutes.homeRouteName: (context) => HomeScreen(),
      },
      darkTheme: AppThems.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}