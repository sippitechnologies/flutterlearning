import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
import 'package:helloworldapp/apps/todoapp/model/todo.dart';

class DbHelper {
  String tblTodo = "todo";
  String colId = "id";
  String colTitle = 'title';
  String colDescription = 'description';
  String colDate = 'date';
  String colPriority = 'priority';

  static final _dbHelper = DbHelper._internal();
  DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  Future<Database> initializedb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + "todos.db";
    var tododb = await openDatabase(path, version: 1, onCreate: _createdb);
    return tododb;
  }

  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializedb();
    }
    return db;
  }

  void _createdb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE $tblTodo($colId INTEGER PRIMARY KEY,$colTitle TEXT," +
            "$colDescription TEXT,$colPriority INTEGER,$colDate TEXT");
  }
}
