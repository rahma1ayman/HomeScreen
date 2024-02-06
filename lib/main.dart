import 'package:flutter/material.dart';
import 'package:ieee/HomeScreen.dart';

void main()
{
  runApp(const IEEEApp());
}
class IEEEApp extends StatelessWidget {
  const IEEEApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
