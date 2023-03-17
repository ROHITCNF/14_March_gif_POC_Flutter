import 'package:flutter/material.dart';
import 'package:flutter_application_14_march_gif/card_architecture.dart';
import 'package:reorderables/reorderables.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  List<Widget> myWidgets = [
    CardArchitecture(
      name: "Neeraj",
      subtitle: "SDE1",
      imageAssetPath: "actor.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Manu",
      subtitle: "SDE4",
      imageAssetPath: "boy.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Vishal",
      subtitle: "SDE1",
      imageAssetPath: "boy2.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Vinod",
      subtitle: "Tech Lead",
      imageAssetPath: "newBoy.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Kundan",
      subtitle: "SDE1",
      imageAssetPath: "girl.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Hemant",
      subtitle: "SDE1",
      imageAssetPath: "actor.png",
      skills: ["JS", "Flutter", "AWS"],
    ),
    CardArchitecture(
      name: "Krisha",
      subtitle: "SDE1",
      imageAssetPath: "girl.png",
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
    return Container(
      child: ReorderableListView(
        children: myWidgets.map((widget) {
          return Container(
            key: ValueKey(widget),
            child: widget,
          );
        }).toList(),
        onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex, newIndex),
      ),
    );
  }
}
