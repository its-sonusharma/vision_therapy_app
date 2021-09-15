import 'package:flutter/material.dart';
import 'package:i_orbit/components/db.dart';
import 'home.dart';

class Result extends StatefulWidget {
  final String selectedLevel;
  final String timeTakenInmin;
  Result({Key key,this.selectedLevel,this.timeTakenInmin}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  String time = '';
  String level = '';

  insertTherapyData() async{
    await insertItemsToDb(time,level);
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () =>Future.value(false),
      child: Scaffold(
        body: Center(
            child: Column(
              children: [
                Expanded(flex:2,child: LayoutBuilder(
                  builder: (context,constraints) => Container(
                    color: Color(0xFF317C84),
                    child: Center(
                      child: Text('Your Result',style: TextStyle(
                          color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 30
                      ),),
                    ),
                  ),
                )),
                Expanded(flex:1,child: LayoutBuilder(
                  builder: (context,constraints) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/reporticon.png",),scale: 4,
                        )
                    ),
                  ),
                )),
                Expanded(flex:2,child: LayoutBuilder(
                  builder: (context,constraints) => Container(height: size.height*.3,
                      child: Column(
                          children: [
                            DataTable(
                              columns: [
                                DataColumn(label: Text('Level Selected')),
                                DataColumn(label: Text('Time Taken')),
                              ],
                              rows: [
                                DataRow(cells: [
                                  DataCell(Text(widget.selectedLevel)),
                                  DataCell(Text(widget.timeTakenInmin)),
                                ])
                              ],
                            ),
                          ])),

                )),
                Expanded(flex:1,child: LayoutBuilder(
                  builder: (context,constraints) => Center(
                    child: SizedBox(height: 50,width: 150,
                      child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF317C84))),
                        onPressed: (){
                          setState(() {
                            time = widget.timeTakenInmin;
                            level = widget.selectedLevel;
                          });
                          insertTherapyData();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Home();
                              },
                            ),
                          );
                        },
                        child: Text("Exit"),
                      ),
                    ),
                  ),
                )),
              ],
            )
        ),
      ),
    );
  }
}