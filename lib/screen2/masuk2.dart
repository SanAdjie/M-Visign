import 'package:flutter/material.dart';
import 'package:wehedev/utility/constant.dart';
import 'package:wehedev/components/reusable_bg1.dart';
import 'package:wehedev/components/reusable_button.dart';
import 'package:wehedev/components/reusable_textfield.dart';

class Login2 extends StatefulWidget {

  static const id = "Login2";

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> with SingleTickerProviderStateMixin{
//Property
  final TextEditingController _emailCons = TextEditingController();
  final TextEditingController _passwordCons = TextEditingController();

  bool isPass = true;
  IconData dataIcon = Icons.visibility_off;

  late AnimationController controller;
  late Animation animasi;
  late num animasiValue;
  int animasiValueInt = 0;

//Constructor

//Method
  passwordVisibiltyState(){
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
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(seconds: 2),
        vsync: this,
        upperBound: 1);
    controller.forward(from: 0);
    animasi = CurvedAnimation(parent: controller, curve: Curves.easeInOutExpo);
    controller.addListener((){
      setState((){
        animasiValue = animasi.value*200;
        animasiValueInt = animasiValue.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: kColorCyan,
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ReusableBg1(animationValue: animasiValueInt),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                        height: animasi.value*230,
                        width: animasi.value*180,
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
                          const Text("Email", style: TextStyle(color: kColorDBlue)),
                          kSpacer10,
                          ReusableTextField(text: "Masukkan email anda", isPass: false, controller: _emailCons, style: 2),
                          kSpacer15,
                          const Text("Password", style: TextStyle(color: kColorDBlue)),
                          kSpacer10,
                          ReusableTextField(text: "Masukkan password anda", isPass: isPass, controller: _passwordCons, style: 2, icon: dataIcon, onTap: (){
                            setState(() {
                              passwordVisibiltyState();
                            });}),
                          kSpacer20,
                          ReusableButton(text: "Log In".toUpperCase(), ontap: (){
                            ///LOGIN PERLU TRY-CATCH + ASYNC-AWAIT + MODAL PROGRESS HUD.
                            ///CATCH DARI FIREBASE, UBAH KE WIDGET ALERT JIKA THROWN ERROR.
                          }),
                          kSpacer20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const <Widget>[
                              Text("Belum punya akun ?", style: TextStyle(color: kColorGrey, fontWeight: kFW600)),
                              Text("Daftar Sekarang", style: TextStyle(color: kColorDBlue, fontWeight: kFW600))],
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
      ),
    );
  }
}
