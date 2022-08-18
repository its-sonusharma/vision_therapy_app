import 'package:flutter/material.dart';
import 'package:i_orbit/components/loadjson.dart';

import 'exercises.dart';
class TreatmentMenu extends StatefulWidget {

  @override
  _TreatmentMenuState createState() => _TreatmentMenuState();
}

class _TreatmentMenuState extends State<TreatmentMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        backgroundColor:Color(0xFF317C84) ,
        title:Column(
          children: [
            Text("Treatment",style: TextStyle(
                color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
            ),),
            Text("Select Treatment Type ")
          ],
        ),
        centerTitle: true,
        elevation: 10, shadowColor:Color(0xFF317C84) ,
      ),
      backgroundColor: Colors.teal[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(color:Color(0xFFA1B4A3) ,

                        elevation: 20,
                        shadowColor: Colors.black,
                        child:  Column(
                          children: [
                            Container(
                                height: 20,width: 150,
                                child:Padding(padding: EdgeInsets.all(4.0),
                                  child: Row( mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.info),
                                    ],),)
                            ),
                            SizedBox(
                              width: 150,
                              height:150,
                              child:  Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/yoga.png'),
                                  radius: 80,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              child: Text("Excercise/Yoga"),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise()));
                              },
                              style: ElevatedButton.styleFrom( // returns ButtonStyle
                                primary: Colors.red,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(color:Color(0xFFDE7959) ,
                        elevation: 20,
                        shadowColor: Colors.black,
                        child:  Column(
                          children: [
                            Container(
                                height: 20,width: 150,
                                child:Padding(padding: EdgeInsets.all(4.0),
                                  child: Row( mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(Icons.info),
                                    ],),)
                            ),
                            SizedBox(
                              width: 150,
                              height:150,
                              child:  Padding(
                                padding: const EdgeInsets.all(20.0),
                                child:  CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/fruits.png'),
                                  radius: 80,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              child: Text("Proteins/Minerals"),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoadJson()));
                              },
                              style: ElevatedButton.styleFrom( // returns ButtonStyle
                                primary: Colors.blueAccent,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
