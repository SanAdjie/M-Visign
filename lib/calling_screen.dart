import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';

TextField tex(
    String text, IconData icon, bool isPass, TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPass,
    enableSuggestions: !isPass,
    autocorrect: !isPass,
    cursorColor: Colors.indigo,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: logoColor),
      labelText: text,
      labelStyle: const TextStyle(color: logoColor),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType:
        isPass ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}

tekanMasuk(BuildContext context, bool isMasuk, Function onSap) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.3,
    height: 40,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onSap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
      child: Text(
        isMasuk ? 'LOG IN' : 'SIGN UP',
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  );
}
