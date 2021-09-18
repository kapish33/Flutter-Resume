import 'package:flutter/material.dart';
import 'Screens/homescreen.dart';
import 'Design/palate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clubhosue App",
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Pallete.background),
        scaffoldBackgroundColor: Pallete.background,
        primaryColor: Colors.white,
        accentColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      home: const HomeScreen(),
    );
  }
}
