import 'package:flutter/material.dart';
import 'package:i_orbit/screens/tresult.dart';
import 'package:simple_timer/simple_timer.dart';


class Therapy extends StatefulWidget {
  Therapy({Key key, this.title,this.selectedImage,}) : super(key: key);

  final String title;
  final String selectedImage;

  @override
  _TherapyState createState() => _TherapyState();
}

class _TherapyState extends State<Therapy>
    with TickerProviderStateMixin {

  AnimationController controller;

  Duration _duration;
  TimerController _timerController;
  TimerStyle _timerStyle = TimerStyle.ring;
  TimerProgressIndicatorDirection _progressIndicatorDirection = TimerProgressIndicatorDirection.clockwise;
  TimerProgressTextCountDirection _progressTextCountDirection = TimerProgressTextCountDirection.count_up;


  @override
  void initState() {
    // TODO: implement initState
    _timerController = TimerController(this);
    super.initState();
    controller = AnimationController(
      duration: Duration(minutes: 8),
      vsync: this,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {
        print(controller.value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () =>Future.value(false),
      child: Scaffold(
        backgroundColor: Colors.teal[50],
        body: Container(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  height: 80,width: 80,margin: EdgeInsets.only(left: screenSize.width*.8),
                  child: Center(
                    child: SimpleTimer(
                      duration:  Duration(minutes: 20),
                      controller: _timerController,
                      timerStyle: _timerStyle,
                      onStart: handleTimerOnStart,
                      onEnd: handleTimerOnEnd,
                      valueListener: timerValueChangeListener,
                      backgroundColor: Colors.teal[50],
                      progressIndicatorColor: Colors.red.withOpacity(controller.value),
                      progressIndicatorDirection: _progressIndicatorDirection,
                      progressTextCountDirection: _progressTextCountDirection,
                      progressTextStyle: TextStyle(color: Colors.black,fontSize: 18),
                      strokeWidth: 5,
                    ),
                  ),
                ),
              ),
              Container(height: screenSize.height*.6,decoration: BoxDecoration(

                  image: DecorationImage(
                  image: AssetImage(widget.selectedImage),
                )
              ),
              margin: EdgeInsets.all(1.0),
              ),
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(height: 50,width: 130,
                      child: ElevatedButton(onPressed: _timerController.start,
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green),
                      ),
                      child: Text("Start Therapy", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: 50,width: 130,
                      child: ElevatedButton(onPressed: (){
                        if(_duration.toString().substring(2,7)==null)
                          {
                            print("Not in Range");
                          }
                        else
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(
                              timeTakenInmin: _duration.toString().substring(2,7),
                              selectedLevel: widget.title,)));
                          }
                      },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),
                        ),
                        child: Text("End Therapy", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void timerValueChangeListener(Duration timeElapsed) {
    _duration = timeElapsed;
    print(_duration);
  }

  void handleTimerOnStart() {
    print("timer has just started");
  }

  void handleTimerOnEnd() {
    print("timer has ended");
  }
}