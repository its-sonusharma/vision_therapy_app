import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_orbit/components/constants.dart';
import 'package:share/share.dart';

import 'contactform.dart';
class ContactUs extends StatelessWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:  Color(0xFF317C84),
        title:  Column(
          children: [
            Text("Contact Sqinture",style: TextStyle(
                color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
            ),),
            Text("Way to Reach Us")
          ],
        ),
        toolbarHeight: 150,elevation: 10,shadowColor: Color(0xFF317C84),
      ),
      backgroundColor: Colors.teal[50],
      body: Container(
        child: Column(
          children: [
            Expanded(flex:2,child: LayoutBuilder(
              builder: (context,constraints) =>Container(height:size.height*.3,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("For any Help Contact Us :-",style: textStyle,),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(12.0),
                        child:Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Phone : ",style: textStyle,),
                            Text("+91-9205900560/+91-7011557731"),
                          ],
                        )
                    ),
                    Padding(padding: EdgeInsets.all(12.0),
                        child:Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Address : ",style: textStyle,),
                            Text(" HMR Institute of Technology\n & Management"),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            )),
            Expanded(flex:3,child: LayoutBuilder(
              builder: (context,constraints) =>Container(
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Container(height: size.height*.3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color:Color(0xFF317C84),width: 1.0,style: BorderStyle.solid ),
                          image: DecorationImage(
                            image: AssetImage("assets/map.PNG",),fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ),
            ))),
          ],
        ),
      ),
    );
  }
}
