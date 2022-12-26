import 'animal.dart';
import 'package:proyectoveterinaria/animal.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

class DB {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'animales.db'),
        onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE animales (id INTEGER PRIMARY KEY, nombre TEXT, especie TEXT,cantidad TEXT)",
      );
    }, version: 3);
  }

  static Future<void> insert(Animal animal) async {
    Database database = await _openDB();
    await database.insert("animales", animal.toMap());
    //conflictAlgorithm: ConflictAlgorithm.replace,
    // );
  }

  static Future<List<Animal>> animales() async {
    Database database = await _openDB();
    final List<Map<String, dynamic>> animalesMap =
        await database.query("animales");

    for (var n in animalesMap) {
      print("nombre: " +
          n['nombre'] +
          "___especie: " +
          n['especie'] +
          "___Cantidad: " +
          n['cantidad']);
    }

    return List.generate(
        animalesMap.length,
        (i) => Animal(
              id: animalesMap[i]["id"],
              nombre: animalesMap[i]["nombre"],
              especie: animalesMap[i]["especie"],
              cantidad: animalesMap[i]["cantidad"],
            ));
  }

  static Future<void> delete(Animal animal) async {
    Database database = await _openDB();
    await database.delete(
      "animales",
      where: 'id=?',
      whereArgs: [animal.id],
    );
  }
/*
  static Future<void> update(Animal animal ) async {
    Database database=await _openDB();
    await database.update("animales", animal.toMap(),where: "id=?",whereArgs: [animal.id]);
  }
*/

}
