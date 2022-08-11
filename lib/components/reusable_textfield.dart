import 'package:flutter/material.dart';
import 'package:wehedev/utility/constant.dart';

class ReusableTextField extends StatelessWidget {
  //Property
  IconData? icon;
  Function()? onTap;
  bool isPass;
  final TextEditingController controller;
  final style;
  final String text;

  //Constructor
  ReusableTextField({Key? key, required this.text, this.icon, required this.isPass, required this.controller, required this.style, this.onTap}) : super(key: key);

  //Method
  inputStyle1(){
    return InputDecoration(
        prefixIcon: Icon(icon, color: Color(0xFF1C468A), size: 28,),
        isDense: true,
        contentPadding: const EdgeInsets.all(15),
        labelText: text,
        labelStyle: const TextStyle(color: Color(0xFF1C468A), fontWeight: FontWeight.w500),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: const Color(0x5FD9D9D9),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)));
  }

  inputStyle2(){
    return InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.all(15),
        labelText: text,
        labelStyle: const TextStyle(color: Color(0xFFC4C4C4)),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Icon(icon),
        ),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: Color(0xFFC4C4C4))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(width: 2, color: Colors.blue)));
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPass,
      enableSuggestions: !isPass,
      autocorrect: !isPass,
      cursorColor: Colors.indigo,
      style: TextStyle(color: Colors.black.withOpacity(0.9)),
      keyboardType: isPass ? TextInputType.visiblePassword : TextInputType.emailAddress,
      decoration: style == 1? inputStyle1():inputStyle2(),
    );
  }
}
