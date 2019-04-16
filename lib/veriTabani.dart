import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

createDatabase() async {
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, "demo.db");
  var database=await openDatabase(path,version:1, onCreate:populateDB);
  return database;
}

void populateDB(Database veritabani, int version) async{
  await veritabani.execute("CREATE TABLE Musteri("
                        "id INTEGER "
  );
}
