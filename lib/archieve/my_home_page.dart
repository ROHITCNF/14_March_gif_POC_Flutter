import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter_application_14_march_gif/approved.dart';
import 'package:flutter_application_14_march_gif/new.dart';
import 'package:flutter_application_14_march_gif/shortlisted.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(248, 248, 255, 1.0),
                ),
                child: New()),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(248, 248, 255, 1.0),
                ),
                child: Shortlisted()),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(248, 248, 255, 1.0),
                ),
                child: Approved()),
          ),
        ],
      ),
    );
  }
}
