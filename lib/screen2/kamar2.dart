import 'package:flutter/material.dart';
import '../utility/constant.dart';
import '../components/reusable_bg1.dart';

class Kamar2 extends StatefulWidget {
  const Kamar2({Key? key}) : super(key: key);

  static const id = "Kamar2";

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
                        padding: EdgeInsets.fromLTRB(45, 30, 40, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text("Ruang Mawar", style: kStyleMenuHeader),
                            Expanded(
                              child: Container(),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: kColorWhite,
                              borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
                          child: null))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
