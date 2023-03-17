import 'package:flutter/material.dart';

import 'card_architecture.dart';

class Approved extends StatefulWidget {
  const Approved({Key? key}) : super(key: key);

  @override
  State<Approved> createState() => _ApprovedState();
}

class _ApprovedState extends State<Approved> {
  List<Widget> myWidgets = [
    CardArchitecture(
      name: "Rohit",
      subtitle: "SDE1",
      imageAssetPath: "newBoy.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Harsha",
      subtitle: "SDE2",
      imageAssetPath: "boy.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
  ];
  void updateMyTiles(int oldIndex, int newIndex) {
    //call the setState
    setState(() {
      //adjustments for when we move fromabove to bottom
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
          key: ValueKey(widget),
          child: widget,
        );
      }).toList(),
      onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex, newIndex),
    );
  }
}
