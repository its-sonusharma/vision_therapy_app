import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_orbit/screens/toption.dart';
import 'package:i_orbit/screens/toption2.dart';
import 'package:i_orbit/screens/toption3.dart';
import 'package:i_orbit/screens/toption4.dart';
class TherapyMenu extends StatefulWidget {
  @override
  _TherapyMenuState createState() => _TherapyMenuState();
}

class _TherapyMenuState extends State<TherapyMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        backgroundColor:Color(0xFF317C84) ,
        title:Column(
          children: [
            Text("Therapy",style: TextStyle(
                color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
            ),),
            Text("Select & Start Therapy ")
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
                  child: Card(color:Color(0xFF7CB3BD) ,

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
                                  'assets/e1.png'),
                              radius: 80,
                            ),
                          ),
                        ),
                      ElevatedButton(
                        child: Text("Therapy 1"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TOption()));
                        },
                        style: ElevatedButton.styleFrom( // returns ButtonStyle
                          primary: Colors.blue,
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
                                  'assets/e2.png'),
                              radius: 80,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          child: Text("Therapy 2"),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TOption2()));
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
        Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(color:Color(0xFFB37FC2) ,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child: Column(
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
                                  'assets/e3.png'),
                              radius: 80,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          child: Text("Therapy 3"),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TOption3()));
                          },
                          style: ElevatedButton.styleFrom( // returns ButtonStyle
                            primary: Colors.teal,
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
                  child: InkWell( onTap: (){},
                    child: Card(color:Color(0xFF3DAD70) ,
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
                                  'assets/e4.png'),
                              radius: 80,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          child: Text("Therapy 4"),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TOption4()));
                          },
                          style: ElevatedButton.styleFrom( // returns ButtonStyle
                            primary: Colors.brown,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ],
                    )
                  ),)
                ),
              ],
            )
        ),
      ],
        ),
    );
  }
}
