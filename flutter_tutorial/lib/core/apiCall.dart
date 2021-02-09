library db_helper;

Map<String, dynamic> dbHelper(
    {String procedureName, List<String> keyString, List<dynamic> value}) {}

class DbData {
  String procedureName = "";
  List<String> keyString;
  List<dynamic> value;

  DbData() {}
}
