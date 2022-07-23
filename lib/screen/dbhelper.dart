import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';


class DbHelper {
  //Create instance, singlaton
  DbHelper._privateConstructor();

  DbHelper instance = DbHelper._privateConstructor();

  //Initialize Database
  Database _database;

  Future<Database> get database => _database ??= _initializeDatabase();

  Future<Database> _initializeDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "semesterdb");
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }


  FutureOr<void> _onCreate(Database db, int version) {
    //db.in
    await db.execute(
        '''
      CREATE TABLE gradetable(
      id INTEGER PRIMARY KEY, 
      semester TEXT,
      grade TEXT
      )
      '''
    );
  }

  insertGrade() async{
    Database db = await instance.database;
    db.insert('gradetable', values)
  }
}