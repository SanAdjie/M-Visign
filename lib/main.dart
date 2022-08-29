import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//Screen 1
import '../screen/daftar.dart';
import '../screen/dashboard/informasi.dart';
import '../screen/masuk.dart';
import '../screen/dashboard/profil.dart';

//Screen 2
import '../screen2/masuk2.dart';
import '../screen2/daftar2.dart';
import '../screen2/profile2.dart';
import '../screen2/dashboard2.dart';
import '../screen2/kamar2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Masuk2());
  }
}
