import 'package:flutter/foundation.dart';
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
      return const JsonDecoder().convert(data);
    }else{
      if (kDebugMode) {
        print(respon.statusCode);
      }
      //TODO: ERROR ALERT! TRY-CATCH (EXCEPTION HANDLING) DIPERLUKAN!. JIKA TIDAK DIBUTUHKAN, HAPUS THROW.
      throw 'Kesalahan Pengambilan Data Json';
    }
  }

  //HTTP POST
  Future tulisData(var data) async{
    await http.post(Uri.parse(url),
        body: JsonEncoder(data));
  }
}

