// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';
import 'package:wehedev/screen/dashboard/profil.dart';
import 'package:wehedev/calling_screen.dart';

class penDaftaran extends StatefulWidget {
  const penDaftaran({Key? key}) : super(key: key);

  @override
  State<penDaftaran> createState() => _penDaftaranState();
}

class _penDaftaranState extends State<penDaftaran> {
  final TextEditingController _emailCons = TextEditingController();
  final TextEditingController _passwordCons = TextEditingController();
  final TextEditingController _namaCons = TextEditingController();
  final TextEditingController _idCons = TextEditingController();
  final TextEditingController _profesiCons = TextEditingController();
  final TextEditingController _spesialisCons = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Masuk",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
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
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.2, 20, 0),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                tex("Email", Icons.person_outline, false, _emailCons),
                const SizedBox(
                  height: 20,
                ),
                tex("Password", Icons.lock_outline, true, _passwordCons),
                const SizedBox(
                  height: 20,
                ),
                tex("Nama", Icons.person_outline, false, _namaCons),
                const SizedBox(
                  height: 20,
                ),
                tex("ID", Icons.person_outline, false, _idCons),
                const SizedBox(
                  height: 20,
                ),
                tex("Profesi", Icons.person_outline, false, _profesiCons),
                const SizedBox(
                  height: 20,
                ),
                tex("Spesialis", Icons.person_outline, false, _spesialisCons),
                const SizedBox(height: 30),
                tekanMasuk(context, false, () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailCons.text, password: _passwordCons.text)
                      .then((value) {
                    print("Berhasil Daftar");
                  }).then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const profilUser()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
              ]),
            ),
          ),
        ));
  }
}
