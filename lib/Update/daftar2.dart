import 'package:flutter/material.dart';
import 'package:wehedev/components/reusable_textfield.dart';
import 'package:wehedev/utility/constant.dart';
import 'package:wehedev/components/reusable_bg_1.dart';
import 'package:wehedev/components/reusable_button.dart';

class Daftar2 extends StatefulWidget {
  const Daftar2({Key? key}) : super(key: key);

  @override
  State<Daftar2> createState() => _Daftar2State();
}

class _Daftar2State extends State<Daftar2> {
//Property
  final TextEditingController _emailCons = TextEditingController();
  final TextEditingController _passwordCons = TextEditingController();
  final TextEditingController _namaCons = TextEditingController();
  final TextEditingController _idCons = TextEditingController();
  final TextEditingController _profesiCons = TextEditingController();
  final TextEditingController _spesialisCons = TextEditingController();
//Constructor
//Method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            const ReusableBg1(),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ReusableTextField(text: "Email", icon : Icons.mail, isPass: false, controller: _emailCons, style: 1),
                    kSpacer20,
                    ReusableTextField(text: "Password", icon : Icons.lock, isPass: true, controller: _passwordCons, style: 1),
                    kSpacer20,
                    ReusableTextField(text: "Nama", icon : Icons.person, isPass: false, controller: _namaCons, style: 1),
                    kSpacer20,
                    ReusableTextField(text: "ID", icon : Icons.sd_card_alert, isPass: false, controller: _idCons, style: 1),
                    kSpacer20,
                    ReusableTextField(text: "Profesi", icon: Icons.person, isPass: false, controller: _profesiCons, style: 1),
                    kSpacer20,
                    ReusableTextField(text: "Spesialis", icon: Icons.person, isPass: false, controller: _spesialisCons, style: 1),
                    kSpacer15,
                    ReusableButton(text: "Sign Up".toUpperCase(), ontap: (){})
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

