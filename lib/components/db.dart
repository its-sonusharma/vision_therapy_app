import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> initilizaeDb() async {
  Future<Database> db = openDatabase(
      join(await getDatabasesPath(), 'shopping.db'), onCreate: (db, version) {
    return db.execute(
        'CREATE TABLE SHOPPING_ITEMS(ID INTEGER PRIMARY KEY AUTOINCREMENT, TITLE TEXT, BOUGHT TEXT, DATE_ADDED TEXT)');
  }, version: 1);

  return db;
}

Future<void> insertItemsToDb(title, bought) async{
  Database db = await initilizaeDb();
  await db.transaction((txn) {
    var dateAdded = DateTime.now().toString();
    return txn.rawInsert("INSERT INTO SHOPPING_ITEMS(TITLE, BOUGHT, DATE_ADDED) VALUES('$title', '$bought', '$dateAdded')");
  }
  );
  print('the item has been added');
}

Future<List> retreiveItemsFromDb() async{
  Database db = await initilizaeDb();
  return db.rawQuery('SELECT * FROM SHOPPING_ITEMS');
}



























// Future<List> insertItemToDb(title) async {
//   Database db = await initilizaeDb();
//   var addedDate = DateTime.now().toString();
//   db.rawQuery(
//       'INSERT INTO SHOPPING_ITEMS(TITLE,BOUGHT,DATE_ADDED) VALUES("$title", 0, "$addedDate" )');
//   return db.rawQuery('SELECT * FROM SHOPPING_ITEMS');
// }

// Future<List> getShoppingItmesFromDb() async {
//   Database db = await initilizaeDb();
//   return db.rawQuery('SELECT * FROM SHOPPING_ITEMS');
// }

// Future<void> updateItemBoughtState(int id, int bought) async {
//   Database db = await initilizaeDb();
//   db.rawQuery('UPDATE SHOPPING_ITEMS SET BOUGHT =$bought WHERE ID = $id');
// }

// Future<void> deleteItem(int id) async {
//   Database db = await initilizaeDb();
//   db.rawQuery('DELETE FROM SHOPPING_ITEMS WHERE ID = $id');
// }