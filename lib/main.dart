import 'package:flutter/material.dart';
import 'package:nusaiba54_64b_assignment3/container_page.dart';
import 'package:nusaiba54_64b_assignment3/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const ContainerPage(),
    );
  }
}
