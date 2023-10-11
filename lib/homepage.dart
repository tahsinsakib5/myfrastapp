

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:frastapp/allpage.dart';
import 'package:frastapp/demo/demo.dart';


class HomePage extends StatelessWidget {
   HomePage({super.key});
 int index = 0;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
            child: Image.asset("assets/main.png",fit: BoxFit.cover,),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              
              itemCount:allpage.length,itemBuilder:(context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical:5,horizontal:15),
                child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>StudyPage(letterList: allpage[index],)));},
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                      ),
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                             height: 120,
                             child: Image.asset("assets/second.png"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                SizedBox(
                                  height:25,
                                ),
                                Text("Lesson ${index+1}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(
                                  height:12,
                                ),
                                  Text("Come learn the Quran",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                              ],
                            )
                          ],
                        ),
                    ),
                  ),
                ),
              );
            }, ),
          )
        ],
      ),
    );
  }
}