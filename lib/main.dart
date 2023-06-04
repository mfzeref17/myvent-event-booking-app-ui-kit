import 'package:flutter/material.dart';
import 'package:uts_max/widgets/bottommenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS SIMAX',
      home: const BottomMenu(),
    );
  }
}
