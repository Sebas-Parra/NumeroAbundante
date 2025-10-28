import 'package:abundant_number/view/page_view.dart';
import 'package:abundant_number/view/result_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Problem 2",
      initialRoute: '/',
        routes: {
          '/': (context)=> const HomePage(),
          '/result':(context)=> const ResultPage()
        },
    );
  }
}
