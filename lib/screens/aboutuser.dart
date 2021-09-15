import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:i_orbit/components/db.dart';
import 'package:i_orbit/screens/welcome/loggedin.dart';

class AboutUser extends StatefulWidget {
  @override
  _AboutUserState createState() => _AboutUserState();
}
class _AboutUserState extends State<AboutUser> {
  List items = [];
  getItemsFromDb() async {
    List shoppingItems = await retreiveItemsFromDb();
    setState(() {
      items = shoppingItems;
    });
  }
    @override
    Widget build(BuildContext context) {
      getItemsFromDb();
      Future<bool> exitDialog() {
        return showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(
                title: new Text(
                  'Are you sure?',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                content: new Text(
                  'Do you want to exit form the app?',
                  style: TextStyle(fontSize: 16.0),
                ),
                actions: <Widget>[
                  new FlatButton(
                    onPressed: () {

                    },
                    child: new Text(
                      'EXIT',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  new FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: new Text(
                      'CANCEL',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ],
              ),
        );
      }
      final user = FirebaseAuth.instance.currentUser;
      return Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          title: Text('About User'),
          centerTitle: true,
          backgroundColor: Color(0xFF317C84),
        ),
        body: Container(
            child: Column(
              children: [
                Expanded(flex: 2, child: LayoutBuilder(
                  builder: (context, constraints) =>
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                user.photoURL,
                              ),
                              radius: 60,
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(height: 10,),
                            Text(
                              user.displayName,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            Text(
                              user.email,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            ],
                        ),
                      ))),
                Expanded(flex: 3, child: Container(

                  child: Center(
                    child: ListView(
                      children: [
                        Center(child: Text("Previously Recorded Therapy",style: TextStyle(
                          color: Color(0xFF317C84),
                          fontWeight: FontWeight.bold,fontSize: 20
                        ),)),
                        Center(
                          child: DataTable(
                            columns: [
                              DataColumn(
                                label: Text("Select level",style: TextStyle(fontWeight: FontWeight.bold),),
                                numeric: false,
                              ),
                              DataColumn(
                                label: Text("Time Taken",style: TextStyle(fontWeight: FontWeight.bold),),
                                numeric: false,
                              ),
                            ],
                            rows: items
                                .map<DataRow>((item) =>
                                DataRow(cells: [
                                  DataCell(
                                      Text(
                                        item['BOUGHT'],
                                        style: TextStyle(
                                          decoration: item['TITLE'] == 1
                                              ? TextDecoration.lineThrough
                                              : TextDecoration.none,
                                        ),
                                      ),
                                      onTap: () {}),
                                  DataCell(
                                      Text(
                                        item['TITLE'],
                                        style: TextStyle(
                                          decoration: item['BOUGHT'] == 1
                                              ? TextDecoration.lineThrough
                                              : TextDecoration.none,
                                        ),
                                      ),
                                      onTap: () {}),
                                ]))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ],
            )
        ),

      );
    }
  }