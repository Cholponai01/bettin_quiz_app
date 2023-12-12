import 'package:betting_quiz_app/features/profile/presentation/pages/home/home_page.dart';
import 'package:betting_quiz_app/features/profile/presentation/pages/test3/test3_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Test3Page(),
    );
  }
}
