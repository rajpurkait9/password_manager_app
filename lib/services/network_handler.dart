import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class NetworkHandler {
  static final client = http.Client();
  static const storage = FlutterSecureStorage();
  static String getBaseUrl() {
    return 'http://172.20.10.2:9000/api/v1/';
  }

  static Future<String> post(var body, String url) async {
    try {
      var response = await client.post(Uri.parse(getBaseUrl() + url),
          body: body, headers: {"Content-Type": "application/json"});
      if (response.statusCode == 201) {
        return response.body;
      }
      return "error";
    } catch (e) {
      return "error";
    }
  }

  static Future<String> get(String url) async {
    try {
      var response = await client.get(Uri.parse(getBaseUrl() + url),
          headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        return response.body;
      }
      return "error";
    } catch (e) {
      return "error";
    }
  }

  static void storeToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  static Future<String?> getToken() async {
    return await storage.read(key: "token");
  }
}
