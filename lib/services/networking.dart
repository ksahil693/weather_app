import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});

  final url;

  Future getdata() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String Data = response.body;

      return jsonDecode(Data);
    } else {
      return (response.statusCode);
    }
  }
}
