import 'package:flutter/material.dart';
import 'package:layouts/src/screens/basic_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basic_design',
      routes: {
        'basic_design': (_) => const BasicLayoutScreen(),
      },
    );
  }
}
