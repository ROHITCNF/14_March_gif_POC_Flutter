import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            //offset: Offset(0, 2),
          ),
        ],
      ),
      // padding: EdgeInsets.all(18),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Icon(
              Icons.menu,
              size: 30.0,
              color: Color.fromRGBO(178, 190, 181, 1.0),
            ),
            onTap: () =>
                Scaffold.of(context).openDrawer(), //this will open the drawer
          ),
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.settings,
            size: 30.0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.badge,
            size: 30.0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.home,
            size: 30.0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.info,
            size: 30.0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          Icon(
            Icons.account_circle,
            size: 30.0,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
