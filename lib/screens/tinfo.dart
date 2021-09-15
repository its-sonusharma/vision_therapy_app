import 'package:flutter/material.dart';
import 'package:i_orbit/components/constants.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => new _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor:Color(0xFF317C84) ,
        title:Column(
          children: [
            Text("About Therapy",style: TextStyle(
                color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
            ),),
            Text("What is vision therapy ?")
          ],
        ),
        centerTitle: true,
        elevation: 10, shadowColor:Color(0xFF317C84) ,
      ),
      backgroundColor: Colors.teal[50],
      body:SafeArea(
       child:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: size.height*.3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image:AssetImage("assets/slideimg/image4.jpg"),fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Patients with unstable visual systems frequently develop suppression,"
                        "a neurological adaptation in which their brains block visual information from one eye."
                        "To avoid seeing double, people automatically learn to suppress from an early age. ",
                      style: ParaStyle,softWrap: true,textScaleFactor: 1.025,
                    ),
                    SizedBox(height: 15,),

                    Text("Suppression is never normal and always indicates a problem with the visual system."
                      "Vision therapy encourages the eyes to operate together, but both eyes must be “on” to do so.",
                    style: ParaStyle,softWrap: true,textScaleFactor: 1.025,),
                    SizedBox(height: 15,),
                    Container(
                      height: size.height*.3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image:AssetImage("assets/slideimg/image1.jpeg"),fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Anti-suppression activities like these help the patient recognise when they are suppressing,"
                      "allowing them to regain control and learn to keep both eyes open at the same time."
                      "For patients with wandering, crossed, or lazy eyes, this is especially critical.",
                      style: ParaStyle,softWrap: true,textScaleFactor: 1.025,
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
     )
    );
  }
}
