import "dart:convert";

import "package:http/http.dart" as http;
class ApiService {

  final String apiUrl;
  //lo de abajo seria el constructor general
  ApiService(this.apiUrl);

  //aqui extraigo toda la response, luego, en donde lo llame, puedo especificar que es lo que necesito
  //la parte
  Future <Map<String, dynamic>> fetchData() async {

    try {
      var url = Uri.parse(apiUrl);
      var response = await http.get(url);

      if (response.statusCode == 200){
        Map<String, dynamic> data = json.decode(response.body);

        return data;
        
      } else {
        throw Exception("error en conseguir la data, intente mas tarde, error: ${response.statusCode}");
      }

    } catch (e) {
      throw Exception("failed to load data, try again later. $e");
    }
    
  }
}