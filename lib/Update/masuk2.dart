import 'package:flutter/material.dart';
import 'package:wehedev/utility/constant.dart';
import 'package:wehedev/components/reusable_bg_1.dart';
import 'package:wehedev/components/reusable_button.dart';
import 'package:wehedev/components/reusable_textfield.dart';

class Login2 extends StatefulWidget {

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
//Property
  final TextEditingController _emailCons = TextEditingController();
  final TextEditingController _passwordCons = TextEditingController();
  bool isPass = true;
  IconData dataIcon = Icons.visibility_off;

//Constructor

//Method
  passwordVisibilty(){
    if(isPass == true){
      isPass = false;
      dataIcon = Icons.visibility;
    }else if(isPass == false){
      isPass = true;
      dataIcon = Icons.visibility_off;
    }else{
      throw "Error Widget";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            const ReusableBg1(),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                      height: 230,
                      width: 180,
                      child: Image.asset("assets/images/New Logo.png")),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.blue.withOpacity(0.2), spreadRadius: 3, blurRadius: 10, offset: const Offset(0,3))]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text("Email", style: TextStyle(color: Color(0xFF1C468A))),
                        kSpacer10,
                        ReusableTextField(text: "Masukkan email anda", isPass: false, controller: _emailCons, style: 2),
                        kSpacer15,
                        const Text("Password", style: TextStyle(color: Color(0xFF1C468A))),
                        kSpacer10,
                        ReusableTextField(text: "Masukkan password anda", isPass: isPass, controller: _passwordCons, style: 2, icon: dataIcon, onTap: (){
                          setState(() {
                            passwordVisibilty();
                          });}),
                        kSpacer20,
                        ReusableButton(text: "Log In".toUpperCase(), ontap: (){
                          //===BEST PRACTICE GUIDE===
                          //TODO : LOGIN PERLU TRY-CATCH + ASYNC-AWAIT + MODAL PROGRESS HUD.
                          //TODO : CATCH DARI FIREBASE, UBAH KE WIDGET ALERT JIKA ADA ERROR.
                        }),
                        kSpacer20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text("Belum punya akun ?  ", style: TextStyle(color: Color(0xFFC4C4C4), fontWeight: FontWeight.w600)),
                            Text("Daftar Sekarang", style: TextStyle(color: Color(0xFF1C468A), fontWeight: FontWeight.w600))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

