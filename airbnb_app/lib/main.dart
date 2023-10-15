import 'package:airbnb_app/home/home_header_appbar.dart';
import 'package:airbnb_app/home/home_header_form.dart';
import 'package:airbnb_app/pages/home_page.dart';
import 'package:airbnb_app/size.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
