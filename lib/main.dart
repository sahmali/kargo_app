import 'package:flutter/material.dart';
import 'package:kargo_app/screens/forgot_password_screen.dart';
import 'package:kargo_app/screens/home_screen.dart';
import 'package:kargo_app/screens/registration.dart';
import 'package:kargo_app/utils/custom_colors.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: CustomColors.kWhite,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: CustomColors.kWhite,
              elevation: 0,
              selectedItemColor: CustomColors.purpleBackground),
          appBarTheme:
              AppBarTheme(backgroundColor: CustomColors.kWhite, elevation: 0),
        ),
        home: const HomeScreen());
  }
}
