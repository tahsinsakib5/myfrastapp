// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



class StudyPage extends StatelessWidget {
  final List letterList;
 

   StudyPage({super.key, required this.letterList,});

   final player=AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("kayda")),
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 160, 126, 247)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: letterList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(3),
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource(""));
                  },
                  child: Card(
                    child: Container(
                      child: Center(
                          child: FittedBox(
                            child: Text(
                                         letterList[index],
                                          style: TextStyle(fontSize: 60,fontWeight: FontWeight.w500,fontFamily: "almushaf"),
                                                ),
                          )),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}