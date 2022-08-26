import 'package:flutter/material.dart';
import 'package:wehedev/utility/constant.dart';
import '../components/reusable_bg1.dart';

class Dashboard2 extends StatefulWidget {
  const Dashboard2({Key? key}) : super(key: key);

  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
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
                            const Text("Informasi Kamar", style: kStyleMenuHeader),
                            Center(
                              child: Container(
                                margin: EdgeInsets.all(20),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                              ),
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
