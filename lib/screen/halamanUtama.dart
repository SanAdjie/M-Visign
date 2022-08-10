// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:wehedev/screen/dashboard/profil.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<HalamanLogin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: size.height * 0.3,
      width: size.width * 0.3,
      decoration: const BoxDecoration(
      ),
      child: const profilUser(),
    )));
  }
}
