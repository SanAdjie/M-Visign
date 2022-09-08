import 'package:flutter/material.dart';
import 'package:wehedev/utility/constant.dart';

class StatusKamar extends StatelessWidget {

  final String satuanStatus;
  final String labelStatus;
  final String valueStatus;
  final String imgStatus;
  final String kondisiStatus;

  const StatusKamar({Key? key, required this.satuanStatus, required this.labelStatus,required this.valueStatus, required this.imgStatus, required this.kondisiStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Text(satuanStatus, style: const TextStyle(color: kColorWhite)),
            Text(labelStatus, style: const TextStyle(color: kColorWhite, fontWeight: FontWeight.bold)),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(valueStatus, style: const TextStyle(color: kColorWhite, fontSize: 40, fontWeight: FontWeight.bold)),
                    Image.asset("assets/images/$imgStatus.png", width: 30, height: 30, alignment: Alignment.topRight,)])),
            Text(kondisiStatus, style: const TextStyle(color: kColorWhite, fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ));
  }
}