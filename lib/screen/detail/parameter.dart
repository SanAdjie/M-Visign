import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';

SizedBox isi1(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  //SpO2
  return SizedBox(
    child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: size.width * 0.1 + 20,
                child: const Text("%SpO2",
                    style: TextStyle(
                        color: pColor,
                        fontFamily: 'RobotoMedium',
                        fontSize: 12))),
            SizedBox(
                width: size.width * 0.1 + 40,
                child: const Text(
                  "Kadar Oksigen",
                  style: TextStyle(
                      color: pColor, fontFamily: 'RobotoMedium', fontSize: 12),
                ))
          ],
        ),
      ),
      Row(
        children: [
          const Center(
            child: Text(
              "0",
              style: TextStyle(
                  color: pColor, fontFamily: 'RobotoMedium', fontSize: 36),
            ),
          ),
          SizedBox(
            width: size.width * 0.1 - 15,
          ),
          Image.asset(
            height: size.height * 0.1 - 30,
            width: size.width * 0.2 - 40,
            fit: BoxFit.fill,
            'assets/images/oksigen.png',
          )
        ],
      ),
      const Center(
        child: Text(
          "Normal",
          style: TextStyle(
              color: pColor, fontFamily: 'RobotoMedium', fontSize: 16),
        ),
      ),
    ]),
  );
}

//detak jantung
SizedBox isi2(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
    child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: size.width * 0.1 + 20,
                child: const Text("PRbpm",
                    style: TextStyle(
                        color: pColor,
                        fontFamily: 'RobotoMedium',
                        fontSize: 12))),
            SizedBox(
                width: size.width * 0.1 + 40,
                child: const Text(
                  "Detak Jantung",
                  style: TextStyle(
                      color: pColor, fontFamily: 'RobotoMedium', fontSize: 12),
                ))
          ],
        ),
      ),
      Row(
        children: [
          const Center(
            child: Text(
              "0",
              style: TextStyle(
                  color: pColor, fontFamily: 'RobotoMedium', fontSize: 36),
            ),
          ),
          SizedBox(
            width: size.width * 0.1 - 15,
          ),
          Image.asset(
            height: size.height * 0.1 - 30,
            width: size.width * 0.2 - 40,
            fit: BoxFit.fill,
            'assets/images/jantung.png',
          )
        ],
      ),
      const Center(
        child: Text(
          "Normal",
          style: TextStyle(
              color: pColor, fontFamily: 'RobotoMedium', fontSize: 16),
        ),
      ),
    ]),
  );
}

SizedBox isi3(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
    child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: size.width * 0.1 + 20,
                child: const Text("mmHG",
                    style: TextStyle(
                        color: pColor,
                        fontFamily: 'RobotoMedium',
                        fontSize: 12))),
            SizedBox(
                width: size.width * 0.1 + 40,
                child: const Text(
                  "Tekanan Darah",
                  style: TextStyle(
                      color: pColor, fontFamily: 'RobotoMedium', fontSize: 12),
                ))
          ],
        ),
      ),
      Row(
        children: [
          const Center(
            child: Text(
              "0",
              style: TextStyle(
                  color: pColor, fontFamily: 'RobotoMedium', fontSize: 36),
            ),
          ),
          SizedBox(
            width: size.width * 0.1 - 15,
          ),
          Image.asset(
            height: size.height * 0.1 - 30,
            width: size.width * 0.2 - 40,
            fit: BoxFit.fill,
            'assets/images/darah.png',
          )
        ],
      ),
      const Center(
        child: Text(
          "Normal",
          style: TextStyle(
              color: pColor, fontFamily: 'RobotoMedium', fontSize: 16),
        ),
      ),
    ]),
  );
}

SizedBox isi4(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
    child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: size.width * 0.1 + 20,
                child: const Text("Celcius",
                    style: TextStyle(
                        color: pColor,
                        fontFamily: 'RobotoMedium',
                        fontSize: 12))),
            SizedBox(
                width: size.width * 0.1 + 40,
                child: const Text(
                  "Suhu Tubuh",
                  style: TextStyle(
                      color: pColor, fontFamily: 'RobotoMedium', fontSize: 12),
                ))
          ],
        ),
      ),
      Row(
        children: [
          const Center(
            child: Text(
              "0",
              style: TextStyle(
                  color: pColor, fontFamily: 'RobotoMedium', fontSize: 36),
            ),
          ),
          SizedBox(
            width: size.width * 0.1 - 15,
          ),
          Image.asset(
            height: size.height * 0.1 - 30,
            width: size.width * 0.2 - 40,
            fit: BoxFit.fill,
            'assets/images/suhu.png',
          )
        ],
      ),
      const Center(
        child: Text(
          "Normal",
          style: TextStyle(
              color: pColor, fontFamily: 'RobotoMedium', fontSize: 16),
        ),
      ),
    ]),
  );
}
