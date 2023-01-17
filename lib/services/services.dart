import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class Services {
  static Future<dynamic> post(String path, Map data) async {
    try {
      var response = await http.post(
        Uri.parse(path),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer',
        },
        body: json.encode(data),
      );

      return json.decode(response.body);
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<dynamic> get(String path) async {
    try {
      var response = await http.get(
        Uri.parse(path),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer',
        },
      );
      return json.decode(response.body);
    } catch (e) {
      log(e.toString());
      return 'error';
    }
  }
}
