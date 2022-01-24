import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../player.dart';

class DB {
  DB._privateConstructor();
  static final DB instance = DB._privateConstructor();
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    String databasesPath = await getDatabasesPath();
    String databaseName = 'rummy_score.db';

    return await openDatabase(
      join(databasesPath, databaseName),
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE players(id INTEGER PRIMARY KEY, name TEXT)',
    );

    await db.execute(
      'CREATE TABLE games(id INTEGER PRIMARY KEY, name TEXT)',
    );
  }

  Future<int?> insertPlayer(Player player) async {
    Database? db = await instance.database;

    return await db?.insert(
      'players',
      player.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List?> getPlayers() async {
    Database? db = await instance.database;

    final List<Map<String, Object?>>? queryResult = await db?.query('players');

    return queryResult?.map((e) => Player.fromMap(e)).toList();
  }

  // Future<void> deletePlayer(int id) async {
  //   final db = await initializeDB();
  //   await db.delete(
  //     'players',
  //     where: "id = ?",
  //     whereArgs: [id],
  //   );
  // }
}
