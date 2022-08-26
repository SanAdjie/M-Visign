import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:wehedev/utility/constant.dart';

class BioPasien extends StatefulWidget {
  const BioPasien({Key? key}) : super(key: key);

  @override
  State<BioPasien> createState() => _BioPasienState();
}

class _BioPasienState extends State<BioPasien> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: size.width * 0.2 - 55,
              height: size.height * 0.1 - 40,
            ),
            SizedBox(
                width: size.width * 0.3 - 10,
                height: size.height * 0.1 - 40,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: kColorContainer),
                  child: const Text("Nama :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 20,
                          color: kColorBlack1)),
                )),
            SizedBox(
              width: size.width * 0.15 - 50,
              height: size.height * 0.1 - 40,
            ),
            SizedBox(
                width: size.width * 0.5 + 20,
                height: size.height * 0.1 - 40,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: kColorLogo),
                  child: const Text("Nama",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 20,
                          color: kColorWhite)),
                )),
          ],
        ),
        SizedBox(
          height: size.height * 0.1 - 50,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width * 0.2 - 55,
              height: size.height * 0.1 - 40,
            ),
            SizedBox(
                width: size.width * 0.3 - 10,
                height: size.height * 0.1 - 40,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: kColorContainer),
                  child: const Text("Umur :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 20,
                          color: kColorBlack1)),
                )),
            SizedBox(
              width: size.width * 0.15 - 50,
              height: size.height * 0.1 - 40,
            ),
            SizedBox(
                width: size.width * 0.5 + 20,
                height: size.height * 0.1 - 40,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: kColorLogo),
                  child: const Text("Umur",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 20,
                          color: kColorWhite)),
                )),
          ],
        ),
        SizedBox(
          height: size.height * 0.1 - 50,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width * 0.2 - 55,
              height: size.height * 0.1 - 40,
            ),
            SizedBox(
                width: size.width * 0.3 - 10,
                height: size.height * 0.1 - 40,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: kColorContainer),
                  child: const Text("Status :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 20,
                          color: kColorBlack1)),
                )),
            SizedBox(
              width: size.width * 0.15 - 50,
              height: size.height * 0.1 - 40,
            ),
            SizedBox(
                width: size.width * 0.5 + 20,
                height: size.height * 0.1 - 40,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: kColorLogo),
                  child: const Text("Status",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          fontSize: 20,
                          color: kColorWhite)),
                )),
          ],
        )
      ],
    );
  }
}
