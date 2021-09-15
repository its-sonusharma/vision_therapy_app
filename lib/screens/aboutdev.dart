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
                      child: Text("i-Orbit is a cloud-based programme for binocular vision assessment and therapy that is specifically built.",style: ParaStyle,textScaleFactor: 0.9,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("The application was created to aid ophthalmologists and optometrists in making accurate management of amblyopia & accommodative anomalies through a variety of application-based activities for rehabilitation"
                          "Other sensory visual capabilities such as contrast sensitivity, colour vision, and fixation pattern are also assessed"
                          "The unique polaroised therapy for the treatment of suppression and amblyopia is an i-orbit trademark."
                        ,style: TextStyle(fontSize: 15),textScaleFactor: 0.9,),
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
                  Text("Started by a team of 2 (Optometry students)",textAlign: TextAlign.center,),
                  Text("Mohit Pushpwan B.opto,M.opto (Amity University)",textAlign: TextAlign.center,style: headStyle,),
                  Text("Saurabh Singh Bisht D.opto,B.opto,M.opto (Amity University)",textAlign: TextAlign.center,style: headStyle,),
                  SizedBox(height: 5,),
                  Text("Developed in 2021 © i-Orbit ",textAlign: TextAlign.center,),
                ],
              ),),
            )),
          ],
        ),
      ),
    );
  }
}
