import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_orbit/components/constants.dart';

class AboutDev extends StatefulWidget {
  @override
  _AboutDevState createState() => _AboutDevState();
}

class _AboutDevState extends State<AboutDev> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:  Color(0xFF317C84),
        title:  Column(
          children: [
            Text("About",style: TextStyle(
                color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
            ),),
            Text("About the Application")
          ],
        ),
        toolbarHeight: 150,elevation: 10,shadowColor: Color(0xFF317C84),
      ),
      backgroundColor: Colors.teal[50],
      body: Container(
        child: Column(
          children: [
            Expanded(flex:3,child: LayoutBuilder(
              builder: (context,constraints) => Container(
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: Text("Squinture is a cloud-based programme for binocular vision assessment and therapy that is specifically built.",style: ParaStyle,textScaleFactor: 0.9,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("The application was created to aid ophthalmologists and optometrists in making accurate management of amblyopia & accommodative anomalies through a variety of application-based activities for rehabilitation"
                          "Other sensory visual capabilities such as contrast sensitivity, colour vision, and fixation pattern are also assessed"
                          "The unique polaroised therapy for the treatment of suppression and amblyopia is an Sqinture trademark."
                        ,style: TextStyle(fontSize: 15),textScaleFactor: 0.9,textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
            )),
            Expanded(flex:1,child: LayoutBuilder(
              builder: (context,constraints) =>Container(child: SvgPicture.asset("assets/login_register/login.svg",)),
            )),
            Expanded(flex:1,child: LayoutBuilder(
              builder: (context,constraints) =>Container(child: Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Started by a team of 3 (ECE students)",textAlign: TextAlign.center,),
                  Text("Sonu Kumar (HMRITM)",textAlign: TextAlign.center,style: headStyle,),
                  Text("Amit Shukla (HMRITM)",textAlign: TextAlign.center,style: headStyle,),
                  Text("Abhishek Giri (HMRITM)",textAlign: TextAlign.center,style: headStyle,),
                  Text("Developed in 2022 © Sqinture ",textAlign: TextAlign.center,),
                ],
              ),),
            )),
          ],
        ),
      ),
    );
  }
}
