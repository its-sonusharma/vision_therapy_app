import 'package:flutter/material.dart';
import 'package:i_orbit/screens/contactform.dart';
class TherapyMenu extends StatefulWidget {
  @override
  _TherapyMenuState createState() => _TherapyMenuState();
}

class _TherapyMenuState extends State<TherapyMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
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
                  child: Card(color:Color(0xFF317C84) ,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child:  SizedBox(
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(color:Color(0xFF317C84) ,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child:  SizedBox(
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
                  child: Card(color:Color(0xFF317C84) ,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child:  SizedBox(
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell( onTap: (){},
                    child: Card(color:Color(0xFF317C84) ,
                    elevation: 20,
                    shadowColor: Colors.black,
                    child:  SizedBox(
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
