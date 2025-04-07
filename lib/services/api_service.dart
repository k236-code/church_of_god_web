import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://your_flask_backend_url/api/';

  Future<List<dynamic>> fetchSermons() async {
    final response = await http.get(Uri.parse(baseUrl + 'sermons'));

    if (response.statusCode == 200) {
      // If the server returns a 200 response, parse the JSON.
      return json.decode(response.body);
    } else {
      // If the server returns an error, throw an exception.
      throw Exception('Failed to load sermons');
    }
  }
}
