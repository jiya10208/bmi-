import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0XFF16193D),
        scaffoldBackgroundColor: const Color(0XFF16193D),
      ),
      debugShowCheckedModeBanner: false,
      // home: const InputPage(),
      home: const InputPage(),
    ),
  );
}
