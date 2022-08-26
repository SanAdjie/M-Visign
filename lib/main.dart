import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//Screen 1
import 'package:wehedev/screen/daftar.dart';
import 'package:wehedev/screen/masuk.dart';
import 'screen/dashboard/profil.dart';

//Screen 2
import 'package:wehedev/screen2/masuk2.dart';
import 'package:wehedev/screen2/daftar2.dart';
import 'screen2/menu2.dart';
import 'screen2/dashboard2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Main2());
  }
}
