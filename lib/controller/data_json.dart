import 'package:wehedev/utility/networking.dart';

class database{
  Future getData(){

  Network data = Network("https://wehedev-4e571-default-rtdb.asia-southeast1.firebasedatabase.app/ruang.json");

  return data.ambilData();
  }
}