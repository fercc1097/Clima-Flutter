import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    print("Network helper ejecutado");
    http.Response response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print("Error, estatus: ${response.statusCode}");
      print(url);
    }
  }
}
