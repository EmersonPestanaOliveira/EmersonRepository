import 'package:flutter/material.dart';
import 'package:sum/Screens/sum_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Sum App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SumScreen(),
    );
  }
}
