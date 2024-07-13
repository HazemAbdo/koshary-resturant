import 'package:flutter/material.dart';
import 'package:kosharyresturant/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
        textDirection: TextDirection.ltr, child: IntroPage());
  }
}
