import 'package:flutter/material.dart';

import 'card_architecture.dart';

class Shortlisted extends StatefulWidget {
  const Shortlisted({Key? key}) : super(key: key);

  @override
  State<Shortlisted> createState() => _ShortlistedState();
}

class _ShortlistedState extends State<Shortlisted> {
  List<Widget> myWidgets = [
    CardArchitecture(
      name: "Jayasoorya",
      subtitle: "SDE1",
      imageAssetPath: "girl.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Nihal",
      subtitle: "SDE1",
      imageAssetPath: "actor.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Vinay",
      subtitle: "SDE1",
      imageAssetPath: "boy2.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
  ];
  void updateMyTiles(int oldIndex, int newIndex) {
    //call the setState
    setState(() {
      //adjustments
      if (oldIndex < newIndex) {
        newIndex--;
      }
      //get the tile we are removing
      final tile = myWidgets.removeAt(oldIndex);
      //place the tile at new position
      myWidgets.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: myWidgets.map((widget) {
        return Container(
          //color: Colors.teal,
          key: ValueKey(widget),
          child: widget,
        );
      }).toList(),
      onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex, newIndex),
    );
  }
}
