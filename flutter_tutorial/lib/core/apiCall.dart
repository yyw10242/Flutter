// library db_helper;
import 'dart:convert';

import 'package:http/http.dart' as http;

Map<String, dynamic> dbHelper(
    {String procedureName, List<String> keyString, List<dynamic> value}) {}

// class dbConnection {
//   static final String dbString = "https://www.kuls.co.kr/kc/DBHelper";
// }

// class DbData {
//   String procedureName = "";
//   List<String> keyString;
//   List<dynamic> value;
//   String rsCode;
//   String rsMsg;
// }

String tempConnectionString = "https://www.kuls.co.kr/kc/DBHelper";

Future<String> getDataTable({
  //params
  String procName,
  List<String> keyValue,
  List<String> value,
}) async {
  // start
  if (procName == "") throw Exception('Procedure Name didn\'t assigned');
  if (keyValue.length == 0 || value.length == 0)
    throw Exception('No Assigned Value(key, value)');
  if (keyValue.length != value.length)
    throw Exception('keyValue and value must have same length');

  String params = "";
  for (var i = 0; i < keyValue.length - 1; i++) {
    params += '"${keyValue[i]}": "${value[i]}"';
  }
  params += '"${keyValue[value.length]}": "${value[value.length]}"';

  final response = await http.post(
    tempConnectionString,
    body: '"PROCEDURE": ${procName},' +
        '{' +
        params +
        '}', //auto formatted... unintended.
    headers: {'Content-Type': "application/json"},
  );

  if (response.statusCode == 200) {
    // If the server did return a 220 OK response,
    // then parse the JSON.
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 220 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
