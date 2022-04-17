import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:koukicons/flipboard.dart';
import 'package:koukicons/questions.dart';
import 'package:koukicons/unlock.dart';

class LoadJson extends StatefulWidget {
  @override
  _LoadJsonState createState() => _LoadJsonState();
}

class _LoadJsonState extends State<LoadJson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor:Color(0xFF317C84) ,
        title:Column(
          children: [
            Text("Treatment ",style: TextStyle(
                color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
            ),),
            Text("Imp Fruits & vegitables")
          ],
        ),
        centerTitle: true,
        elevation: 10, shadowColor:Color(0xFF317C84) ,
      ),
      backgroundColor: Colors.teal[50],
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString('assets/treatment.json'),
            builder: (context,snapshot)
            {
              var newData = json.decode(snapshot.data.toString());
              return ListView.builder(
                  itemCount: newData == null ? 0 : newData.length,
                  itemBuilder: (BuildContext context , int index){
                    return ExpansionTile(initiallyExpanded: false,tilePadding: EdgeInsets.all(10.0),
                        title: Text(newData[index]['Fruit'],style: TextStyle(
                          fontSize: 17.0,
                        ),),
                        leading: CircleAvatar(
                          backgroundColor:Colors.transparent ,
                          child: KoukiconsFlipboard(),
                        ),
                        children: [
                          Padding(
                            padding:EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "${newData[index]['About']}",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text("Protein : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                    Text(
                                      "${newData[index]['Protein']}",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Vitamin A : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                    Text(
                                      "${newData[index]['Vitamin A']}",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Vitamin C : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                    Text(
                                      "${newData[index]['Vitamin C']}",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Iron : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                    Text(
                                      "${newData[index]['Iron']}",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Calories : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                    Text(
                                      "${newData[index]['Calories']}",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Fiber : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                    Text(
                                      "${newData[index]['Fiber']}",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),  // ...
                          // other information you want to show
                        ]);
                  }
              );
            }
        ),
      ),
    );
  }
}
