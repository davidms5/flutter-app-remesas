import "package:http/http.dart" as http;

class ApiService {

  final String apiUrl;

  ApiService(this.apiUrl);

  //aqui extraigo toda la response, luego, en donde lo llame, puedo especificar que es lo que necesito
  Future <http.Response> fetchData() async {

    try {
      var url = Uri.parse(apiUrl);
      var response = await http.get(url);

      return response;

    } catch (e) {
      throw Exception("failed to load data, try again later. $e");
    }
    
  }
}