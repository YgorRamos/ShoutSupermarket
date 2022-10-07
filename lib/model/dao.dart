import 'package:sqflite/sqflite.dart';

class DAO {
  static Future<Database> getConnection() async {
    final dbName = "productsdb.db";
    final dbPath = getConnection();
    final path = "$dbPath $dbName";

    final db = await openDatabase(path, version: 1, onCreate: (db, _) async {
      final sql =
          "CREATE TABLE products(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, value TEXT, quantity TEXT)";
      await db.execute(sql);
    } 
    );
  return db;
  }
}
