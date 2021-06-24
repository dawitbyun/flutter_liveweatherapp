import 'package:http/http.dart'
    as http; // we can use anything inside the package by adding as http
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http
        .get(Uri.parse(url)); //http를 앞에 붙여줌으로서 http package로부터 온것임을 알수있음

    //Response is an object
    //body is string. it is the information
    //status code i

    if (response.statusCode == 200) {
      //200 is good
      String data = response.body;
      var decodedData = jsonDecode(
          data); //jsonDecode output이 dynamic 이라서 decoded data type을 var로 함

      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
