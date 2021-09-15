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
            Text("Contact i-Orbit",style: TextStyle(
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
                            Text("+91-9871259660/+91-8287546506"),
                          ],
                        )
                    ),
                    Padding(padding: EdgeInsets.all(12.0),
                        child:Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Address : ",style: textStyle,),
                            Text("Amity University Haryana,122413"),
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
            Expanded(flex:2,child: LayoutBuilder(
              builder: (context,constraints) =>Container(height: size.height*.2,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: InkWell(onTap: (){
                        Share.share("https://www.facebook.com/I-Orbit-100198599072454");
                      },
                        child: SvgPicture.asset(
                          "assets/facebook.svg",
                          height: 50,width: 50,
                        ),
                      ),
                    ),
                    Container(
                      child: SizedBox(height: 45,width: 150,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFF317C84)),
                          ),
                          child: Text("Reach-us"),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactForm()));
                          },
                        ),
                      ),),
                    Container(
                      child: InkWell(onTap: (){
                        Share.share('https://www.instagram.com/i_orbit_2021?r=nametag');
                      },
                        child: SvgPicture.asset(
                          "assets/instagram.svg",
                          height: 50,width: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
