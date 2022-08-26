import 'package:flutter/material.dart';

class ReusableBg1 extends StatelessWidget {

  int? animationValue = 1;

  ReusableBg1({Key? key, this.animationValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: animationValue??100*2,
            child: Container(
              color: Colors.white,
              foregroundDecoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg_screen_baru.png"),
                      fit: BoxFit.fill)))),
        Expanded(
            flex: 100,
            child: Container(color: Colors.white))
      ],
    );
  }
}
