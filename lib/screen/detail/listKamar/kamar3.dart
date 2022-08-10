import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';

class Kamar3 extends StatefulWidget {
  const Kamar3({Key? key}) : super(key: key);

  @override
  State<Kamar3> createState() => _Kamar3State();
}

class _Kamar3State extends State<Kamar3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Text(
            "Kamar 3",
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
                      "3A",
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
                      "3B",
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
