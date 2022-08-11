import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {

  final text;
  final Function()? ontap;

  ReusableButton({Key? key, @required this.text, @required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: const Color(0xFF2ECCCB),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500))))
    );
  }
}

