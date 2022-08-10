import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';
import 'package:wehedev/screen/detail/listKamar/kamar1.dart';
import 'package:wehedev/screen/detail/listKamar/kamar2.dart';
import 'package:wehedev/screen/detail/listKamar/kamar3.dart';
import 'package:wehedev/screen/detail/listKamar/kamar4.dart';
import 'package:wehedev/screen/detail/listKamar/kamar5.dart';

class KamarPasien extends StatefulWidget {
  const KamarPasien({Key? key}) : super(key: key);

  @override
  State<KamarPasien> createState() => _KamarPasienState();
}

class _KamarPasienState extends State<KamarPasien> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: SizedBox(
      width: size.width,
      height: size.height * 0.15 - 10,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 9.0),
            child: SizedBox(
              width: size.width * 0.25 - 10,
              height: size.height * 0.3 - 10,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: cBG),
                child: const Kamar1(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: SizedBox(
              width: size.width * 0.25 - 10,
              height: size.height * 0.3 - 10,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: cBG),
                child: const Kamar2(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: SizedBox(
              width: size.width * 0.25 - 10,
              height: size.height * 0.3 - 10,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: cBG),
                child: const Kamar3(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: SizedBox(
              width: size.width * 0.25 - 10,
              height: size.height * 0.3 - 10,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: cBG),
                child: const Kamar4(),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
