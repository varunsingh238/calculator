import 'package:calculator/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          fontFamily: 'Product Sans',
          primarySwatch: Colors.blue,
          brightness: Brightness.light),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Product Sans",
          primarySwatch: Colors.blue),
      themeMode: ThemeMode.system,
    );
  }
}
