import 'package:flutter/material.dart';
import '../utility/constant.dart';

class DetailKamar extends StatelessWidget {

  final String nomerKamar;
  final String subNomerKamar1;
  final String subNomerKamar2;
  final bool aktivasiA;
  final bool aktivasiB;
  final Function()? onTap1;
  final Function()? onTap2;

  const DetailKamar({
    required this.nomerKamar,
    required this.subNomerKamar1,
    required this.subNomerKamar2,
    required this.aktivasiA,
    required this.aktivasiB,
    required this.onTap1,
    required this.onTap2
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Kamar $nomerKamar", style: const TextStyle(fontSize: 12)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                onTap: onTap1,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      color: aktivasiA == true? kColorBlue5 : null),
                    child: Text(subNomerKamar1,style: kStyleKamarItem))),
            Text(" "),
            GestureDetector(
                onTap: onTap2,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(35)),
                        color: aktivasiB == true? kColorBlue5 : null),
                    child: Text(subNomerKamar2, style: kStyleKamarItem)))
          ],
        )
      ],
    );
  }
}
