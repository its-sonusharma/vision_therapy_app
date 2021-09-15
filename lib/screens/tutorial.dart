
import 'package:flutter/material.dart';
import 'package:koukicons/cloudWarning.dart';
class Ttutorial extends StatefulWidget {
  @override
  _TtutorialState createState() => _TtutorialState();
}

class _TtutorialState extends State<Ttutorial> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor:Color(0xFF317C84) ,
          title:Column(
            children: [
              Text("Learn Tutorial",style: TextStyle(
                  color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
              ),),
              Text("How to use vision therapy ?")
            ],
          ),
          centerTitle: true,
          elevation: 10, shadowColor:Color(0xFF317C84) ,
        ),
        backgroundColor: Colors.teal[50],
        body:Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: KoukiconsCloudWarning(height: 150,width: 150,),),
            Text("Comming Soon!!!"),

          ],
        ))
    );
  }
}
