import 'package:flutter/material.dart';
import '../utility/constant.dart';
import '../components/reusable_bg1.dart';

class Kamar2 extends StatefulWidget {

  static const id = "Kamar2";
  final String namaKamar;

  const Kamar2(this.namaKamar, {Key? key}) : super(key: key);

  @override
  State<Kamar2> createState() => _Kamar2State();
}

class _Kamar2State extends State<Kamar2> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColorCyan,
      child: SafeArea(
        child: Scaffold(
            body: Stack(
            children: <Widget>[
              ReusableBg1(),
              Column(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(45, 30, 40, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(widget.namaKamar, style: kStyleMenuHeader),
                            Expanded(
                              child: Container(),
                            )
                          ],
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: kColorWhite,
                              borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
                          child: Container(
                            margin: const EdgeInsets.all(30),
                              decoration: const BoxDecoration(
                                  color: Color(0xFF00B9D0),
                                  borderRadius: BorderRadius.all(Radius.circular(35)))
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
