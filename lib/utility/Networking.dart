import 'package:http/http.dart' as http;
import 'dart:convert';

class Network{
  //Property
  final String url;
  var data;

  //Constructor
  Network(this.url);

  //Method
  //HTTP GET
  Future ambilData() async{
    http.Response respon  = await http.get(Uri.parse(url));

    if(respon.statusCode == 200){
      data = respon.body;
      return JsonDecoder().convert(data);
    }else{
      print(respon.statusCode);
    }
  }

  //HTTP POST
  Future tulisData(var data) async{
    await http.post(Uri.parse(url),
        body: JsonEncoder(data));
  }
}

