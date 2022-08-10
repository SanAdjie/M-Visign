// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wehedev/calling_screen.dart';
import 'package:wehedev/screen/daftar.dart';
import 'package:wehedev/screen/dashboard/profil.dart';
import '../components/constant.dart';

// ignore: camel_case_types
class HalamanLogin extends StatefulWidget {
  const HalamanLogin({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<HalamanLogin> {
  final TextEditingController _emailCons = TextEditingController();
  final TextEditingController _passwordCons = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[cBG, tColor, pColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.fromLTRB(20, size.height * 0.2, 20, 0),
              child: Column(children: [
                Image.asset(
                  'assets/images/New Logo.png',
                  fit: BoxFit.contain,
                  width: 240,
                  height: 240,
                ),
                const SizedBox(
                  height: 30,
                ),
                tex("Email", Icons.person_outline, false, _emailCons),
                const SizedBox(
                  height: 20,
                ),
                tex("Password", Icons.lock_outline, true, _passwordCons),
                const SizedBox(height: 30),
                tekanMasuk(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailCons.text, password: _passwordCons.text)
                      .then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const profilUser()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                daftarMasuk()
              ]),
            ))));
  }

  Row daftarMasuk() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Belum Punya Akun?  ",
          style: TextStyle(color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const penDaftaran()));
          },
          child: const Text(
            " Daftar",
            style: TextStyle(color: logoColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
