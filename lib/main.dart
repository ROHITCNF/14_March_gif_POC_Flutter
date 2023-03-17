import 'package:flutter/material.dart';
import 'package:flutter_application_14_march_gif/card_architecture.dart';
import 'package:flutter_application_14_march_gif/landing_page.dart';
import 'package:flutter_application_14_march_gif/new.dart';

import 'archieve/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
