import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';

class Kamar2 extends StatefulWidget {
  const Kamar2({Key? key}) : super(key: key);

  @override
  State<Kamar2> createState() => _Kamar2State();
}

class _Kamar2State extends State<Kamar2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Text(
            "Kamar 2",
            style: const TextStyle(
                fontFamily: "PoppinsBold", fontSize: 12, color: pColor),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () => setState(() {}),
                child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: cBG2,
                    ),
                    child: const Text(
                      "2A",
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: kColor),
                    ))),
            InkWell(
                onTap: () => setState(() {}),
                child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: cBG2,
                    ),
                    child: const Text(
                      "2B",
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: kColor),
                    )))
          ],
        )
      ],
    );
  }
}
