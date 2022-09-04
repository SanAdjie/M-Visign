import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import '../routes/masuk2.dart';
import '../routes/daftar2.dart';
import '../routes/profile2.dart';
import '../routes/dashboard2.dart';
import '../routes/kamar2.dart';

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
