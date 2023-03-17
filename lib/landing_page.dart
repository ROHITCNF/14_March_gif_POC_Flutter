import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_14_march_gif/middle_bar.dart';
import 'package:flutter_application_14_march_gif/archieve/my_home_page.dart';
import 'package:flutter_application_14_march_gif/side_bar.dart';
import 'package:flutter_application_14_march_gif/third_coloumn.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SideBar(),
            MiddleBar(),
            VerticalDivider(
              color: Colors.grey,
              thickness: 0.3,
            ),
            ThirdColoumn(),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
