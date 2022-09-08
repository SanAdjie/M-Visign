import 'package:flutter/material.dart';
import '../utility/constant.dart';

class DetailInformasiKamar extends StatelessWidget {

  final String form;
  final String formValue;

  const DetailInformasiKamar({required this.form, required this.formValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: kColorBlue4,
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              child: Text("$form : ", style: const TextStyle(color: kColorWhite, fontSize: 16), textAlign: TextAlign.center))),
        Expanded(
          flex: 3,
          child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: kColorCyan2,
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              child: Text(formValue, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
        ),
      ],
    );
  }
}
