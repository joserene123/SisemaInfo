import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiMananging {
  final String _url = "http://localhost:3000/api";

  Future<List<dynamic>> getCategoria() async {
    http.Response response = await http.get(
      Uri.parse('$_url/catalogos'),
    );
    if (response.statusCode == 200) {
      // Si la solicitud es exitosa (código de estado 200)
      final data = json.decode(response.body);
      return data;
    } else {
      return getCategoria();
    }
  }

  Future<List<dynamic>> getProducto() async {
    http.Response response = await http.get(
      Uri.parse('$_url/productos'),
    );
    if (response.statusCode == 200) {
      // Si la solicitud es exitosa (código de estado 200)
      return jsonDecode(response.body);
    } else {
      throw Exception('no no no no ERROr');
    }
  }

  Future<List<dynamic>> getProveedores() async {
    http.Response response = await http.get(
      Uri.parse('$_url/proveedores'),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> data = map["data"];
      return data;
    } else {
      throw Exception('no no no no ERROr');
    }
  }
}
