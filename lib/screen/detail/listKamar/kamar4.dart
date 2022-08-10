import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';

class Kamar4 extends StatefulWidget {
  const Kamar4({Key? key}) : super(key: key);

  @override
  State<Kamar4> createState() => _Kamar4State();
}

class _Kamar4State extends State<Kamar4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Text(
            "Kamar 4",
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
                      "4A",
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
                      "4B",
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
