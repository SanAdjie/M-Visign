import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';
import 'package:wehedev/screen/detail/kamar.dart';
import 'package:wehedev/screen/detail/listKamar/bioPasien.dart';
import 'package:wehedev/screen/dashboard/profil.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Infoh createState() => Infoh();
}

class Infoh extends State<Info> {
  late String _tex1 = '0';
  late String _tex2 = '0';
  late String _tex3 = '0';

  final _refData1 = FirebaseDatabase.instance.ref();
  final _refData2 = FirebaseDatabase.instance.ref();
  final _refData3 = FirebaseDatabase.instance.ref();

  late StreamSubscription _subData1;
  late StreamSubscription _subData2;
  late StreamSubscription _subData3;

  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _subData1 =
        _refData1.child('UsersData/monitoring/SpO2').onValue.listen((event) {
      final Object? desk1 = event.snapshot.value;
      setState(() {
        _tex1 = '$desk1';
      });
    });

    _subData2 = _refData2
        .child('UsersData/monitoring/bodyTemperature')
        .onValue
        .listen((event) {
      final Object? desk2 = event.snapshot.value;
      setState(() {
        _tex2 = '$desk2';
      });
    });

    _subData3 = _refData3
        .child('UsersData/monitoring/heartRate')
        .onValue
        .listen((event) {
      final Object? desk3 = event.snapshot.value;
      setState(() {
        _tex3 = '$desk3';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cBG,
      appBar: buildAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        const KamarPasien(),
        const BioPasien(),
        SizedBox(
          height: size.height * 0.1 - 25,
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.55 - 10,
          child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: pColor),
              child: Column(children: [
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                        width: size.width * 0.8 + 40,
                        height: size.height * 0.4 - 20,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                            color: cBG),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                              width: size.width * 0.1 + 20,
                                              child: const Text("%SpO2",
                                                  style: TextStyle(
                                                      color: pColor,
                                                      fontFamily:
                                                          'RobotoMedium',
                                                      fontSize: 12))),
                                          SizedBox(
                                              width: size.width * 0.1 + 40,
                                              child: const Text(
                                                "Kadar Oksigen",
                                                style: TextStyle(
                                                    color: pColor,
                                                    fontFamily: 'RobotoMedium',
                                                    fontSize: 12),
                                              ))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Center(
                                          child: Text(
                                            _tex1,
                                            style: const TextStyle(
                                                color: pColor,
                                                fontFamily: 'RobotoMedium',
                                                fontSize: 36),
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
                                            color: pColor,
                                            fontFamily: 'RobotoMedium',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ]),
                                ),
                                SizedBox(
                                  width: size.width * 0.1 - 20,
                                ),
                                SizedBox(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                              width: size.width * 0.1 + 20,
                                              child: const Text("PRbpm",
                                                  style: TextStyle(
                                                      color: pColor,
                                                      fontFamily:
                                                          'RobotoMedium',
                                                      fontSize: 12))),
                                          SizedBox(
                                              width: size.width * 0.1 + 40,
                                              child: const Text(
                                                "Detak Jantung",
                                                style: TextStyle(
                                                    color: pColor,
                                                    fontFamily: 'RobotoMedium',
                                                    fontSize: 12),
                                              ))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Center(
                                          child: Text(
                                            _tex3,
                                            style: const TextStyle(
                                                color: pColor,
                                                fontFamily: 'RobotoMedium',
                                                fontSize: 36),
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
                                            color: pColor,
                                            fontFamily: 'RobotoMedium',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.1 - 35),
                            Row(
                              children: [
                                SizedBox(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                              width: size.width * 0.1 + 20,
                                              child: const Text("mmHG",
                                                  style: TextStyle(
                                                      color: pColor,
                                                      fontFamily:
                                                          'RobotoMedium',
                                                      fontSize: 12))),
                                          SizedBox(
                                              width: size.width * 0.1 + 40,
                                              child: const Text(
                                                "Tekanan Darah",
                                                style: TextStyle(
                                                    color: pColor,
                                                    fontFamily: 'RobotoMedium',
                                                    fontSize: 12),
                                              ))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Center(
                                          child: Text(
                                            "123/81",
                                            style: TextStyle(
                                                color: pColor,
                                                fontFamily: 'RobotoMedium',
                                                fontSize: 36),
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
                                            color: pColor,
                                            fontFamily: 'RobotoMedium',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ]),
                                ),
                                SizedBox(
                                  width: size.width * 0.1 - 20,
                                ),
                                SizedBox(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                              width: size.width * 0.1 + 20,
                                              child: const Text("Celcius",
                                                  style: TextStyle(
                                                      color: pColor,
                                                      fontFamily:
                                                          'RobotoMedium',
                                                      fontSize: 12))),
                                          SizedBox(
                                              width: size.width * 0.1 + 40,
                                              child: const Text(
                                                "Suhu Tubuh",
                                                style: TextStyle(
                                                    color: pColor,
                                                    fontFamily: 'RobotoMedium',
                                                    fontSize: 12),
                                              ))
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Center(
                                          child: Text(
                                            _tex2,
                                            style: const TextStyle(
                                                color: pColor,
                                                fontFamily: 'RobotoMedium',
                                                fontSize: 36),
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
                                            color: pColor,
                                            fontFamily: 'RobotoMedium',
                                            fontSize: 16),
                                      ),
                                    ),
                                  ]),
                                )
                              ],
                            )
                          ],
                        ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const profilUser();
                              }));
                            },
                            child: Container(
                                height: 55,
                                width: 55,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Image.asset(
                                  fit: BoxFit.contain,
                                  'assets/images/profil.png',
                                )))),
                    SizedBox(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Info();
                              }));
                            },
                            child: Container(
                                height: 55,
                                width: 55,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Image.asset(
                                  fit: BoxFit.contain,
                                  'assets/images/info.png',
                                )))),
                  ],
                ),
              ])),
        ),
      ]))),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        "Detail Informasi",
        style: TextStyle(fontFamily: "PoppinsBold"),
      ),
      backgroundColor: cBG,
      shadowColor: cBG,
    );
  }

  @override
  void deactivate() {
    _subData1.cancel();
    _subData2.cancel();
    _subData3.cancel();
    super.deactivate();
  }
}
