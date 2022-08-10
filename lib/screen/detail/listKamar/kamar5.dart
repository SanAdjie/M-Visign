import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';

class Kamar5 extends StatefulWidget {
  const Kamar5({Key? key}) : super(key: key);

  @override
  State<Kamar5> createState() => _Kamar5State();
}

class _Kamar5State extends State<Kamar5> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Text(
            "Kamar 5",
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
                      "5A",
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
                      "5B",
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
