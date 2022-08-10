import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';

class Kamar1 extends StatefulWidget {
  const Kamar1({Key? key}) : super(key: key);

  @override
  State<Kamar1> createState() => _Kamar1State();
}

class _Kamar1State extends State<Kamar1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Text(
            "Kamar 1",
            style: TextStyle(
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
                      "1A",
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
                      "1B",
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
