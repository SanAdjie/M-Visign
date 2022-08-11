import 'package:flutter/material.dart';

class ReusableBg1 extends StatelessWidget {
  const ReusableBg1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Container(
              foregroundDecoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/bg_screen_baru.png"),
                      fit: BoxFit.fill)
              ),
            )
        ),
        Expanded(
            flex: 1,
            child: Container()
        )
      ],
    );
  }
}
