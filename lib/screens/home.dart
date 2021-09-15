import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:i_orbit/components/constants.dart';
import 'package:i_orbit/screens/aboutdev.dart';
import 'package:i_orbit/screens/aboutuser.dart';
import 'package:i_orbit/screens/contactus.dart';
import 'package:i_orbit/screens/tinfo.dart';
import 'package:i_orbit/screens/toption.dart';
import 'package:i_orbit/screens/tutorial.dart';

import 'ishiharachart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> litems = ["assets/slideimg/image5.jpg",
      "assets/slideimg/image1.jpeg","assets/slideimg/image2.png",
      "assets/slideimg/image3.jpg","assets/slideimg/image4.jpg",
      ];
    return WillPopScope(
      onWillPop: () =>Future.value(false),
      child: Scaffold(
        backgroundColor: Colors.teal[50],
        body: Stack(
          children: [
            Container(margin: EdgeInsets.only(bottom: 20.0),
              height: size.height*.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage("assets/header.png"),fit: BoxFit.cover,
                  )
              ),
            ),
            SafeArea(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: LayoutBuilder(
                    builder: (context,constraints) => Container(
                      child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(" Welcome Back ! ",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize: 20.0,
                          ),),
                          SizedBox(width: size.width*.2),
                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUser()));
                          },
                            child: Icon(Icons.account_circle,size: 30.0,color: Colors.white),
                          ),
                        ],
                      ) ,
                    ),
                  )),
                  Expanded(flex:2,child: LayoutBuilder(
                    builder: (context,constraints) => Container(
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return Container(decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image:AssetImage(litems[index]),fit: BoxFit.cover
                              )
                          ));
                        },
                        itemCount: 5,
                        viewportFraction:0.78,
                        scale: 0.7,
                        autoplay: true,
                        pagination:SwiperPagination(),
                      ),
                    ),
                  )),

                  SizedBox(height: size.height*.02),
                  Expanded(flex: 04,
                    child: GridView.count(
                        crossAxisCount: 2,
                      primary: false,
                      children: [
                        InkWell(borderRadius: BorderRadius.circular(25.0),
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TOption()));
                        },
                          child: Card(color: Colors.transparent,shadowColor: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: Image.asset('assets/therapy.png',
                              fit: BoxFit.contain,),
                          ),
                        ),
                        InkWell(borderRadius: BorderRadius.circular(25.0),
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Ttutorial()));
                        },
                          child: Card(color: Colors.transparent,shadowColor: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: Image.asset('assets/tutorial.png',
                              fit: BoxFit.contain,),
                          ),
                        ),
                        InkWell(borderRadius: BorderRadius.circular(25.0),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Ishihra()));
                          },
                          child: Card(color: Colors.transparent,shadowColor: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: Image.asset('assets/ishihra.png',
                              fit: BoxFit.contain,),
                          ),
                        ),
                        InkWell(borderRadius: BorderRadius.circular(25.0),
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Info()));
                        },
                          child: Card(color: Colors.transparent,shadowColor: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: Image.asset('assets/info.png',
                              fit: BoxFit.contain,),
                          ),
                        ),
                        InkWell(borderRadius: BorderRadius.circular(25.0),
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));
                        },
                          child: Card(color: Colors.transparent,shadowColor: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: Image.asset('assets/reach.png',
                              fit: BoxFit.contain,),
                          ),
                        ),
                        InkWell(borderRadius: BorderRadius.circular(25.0),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutDev()));
                          },
                          child: Card(color: Colors.transparent,shadowColor: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(cardRadius)),
                            child: Image.asset('assets/aboutus.png',
                              fit: BoxFit.contain,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
