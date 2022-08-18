import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_orbit/screens/therapy_one.dart';


class TOption extends StatefulWidget {
  @override
  _TOptionState createState() => _TOptionState();
}
class _TOptionState extends State<TOption> {
  double sliderDiscreteValue = 0;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () =>Future.value(false),
      child: Scaffold(backgroundColor: Colors.teal[50],
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex:4,child: LayoutBuilder(
              builder: (context,constraints) => Container(
                color: Color(0xFF317C84),
                child: Center(
                  child:Column(
                    children: [
                      Expanded(flex: 1,
                        child: Container(margin: EdgeInsets.only(top: 40),
                          child: Center(
                            child: Text('Instructions',style: TextStyle(
                                color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 40
                            ),),
                          ),
                        ),
                      ),
                      Expanded(flex: 3,
                        child: Container(
                          child: Center(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Read Instructions Carefully ',style: TextStyle(
                                    color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 20
                                ),),
                                Text('Read the Whole letters with time ',style: TextStyle(
                                    color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15
                                ),),
                                Text('Wear the 3D glass before start ',style: TextStyle(
                                    color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15
                                ),),
                                Text('Drag & select the level below  ',style: TextStyle(
                                    color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15
                                ),),
                                Text('Select & Start Therapy  ',style: TextStyle(
                                    color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
               )),
              Expanded(flex:1,child: LayoutBuilder(
                builder: (context,constraints) => Container(
                  child: Center(
                    child: Slider(
                      value: sliderDiscreteValue,
                      inactiveColor: Color(0xFF93B8BF),
                      activeColor: Color(0xFF317C84),
                      min: 0,
                      max: 100,
                      divisions: 1,
                      label: sliderDiscreteValue.round() == 0 ? "Easy" :"Hard",
                      onChanged: (value) {
                        setState(() {
                          sliderDiscreteValue = value;
                        });
                      },
                    ),
                  ),
                ),
              )),
              Expanded(flex:1,child: LayoutBuilder(
                builder: (context,constraints) => Container(
                  child: Center(
                    child:SizedBox(height: 50,width: 200,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Therapy(title:sliderDiscreteValue.round() == 0 ? "Easy" :"Hard",
                          selectedImage: sliderDiscreteValue.round() == 0 ? "assets/slideimg/tp1.gif":"assets/slideimg/tp1.gif",)));
                      },style : ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xFF317C84))
                      ),child: Text("Select"),
                      ),
                    ),
                  ),
                ),
              ))
            ],
          ),
        )
      ),
    );
  }
}
