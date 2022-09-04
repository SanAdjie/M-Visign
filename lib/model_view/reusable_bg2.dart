import 'package:flutter/material.dart';

class ReusableBg2 extends StatelessWidget {


  int? animationValue = 1;

  ReusableBg2({Key? key, this.animationValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 100,
            child: Container(color: Colors.white)),
        Expanded(
            flex: animationValue??100*3,
            child: Container(
                color: Colors.white,
                foregroundDecoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg_screen_baru2.png"),
                        fit: BoxFit.fill))))
      ],
    );
  }
}
