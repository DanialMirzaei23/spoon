import 'package:flutter/material.dart';
import 'application/themes/themes.dart';
import 'test_page.dart';

///
/// Not much work here just gave lightTheme to material theme
///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      // A very simple test page to test different components and showcase
      home: const TestPage(),
    );
  }
}