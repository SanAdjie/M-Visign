// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wehedev/components/constant.dart';
import 'package:wehedev/screen/dashboard/informasi.dart';
import 'package:wehedev/screen/masuk.dart';

class profilUser extends StatelessWidget {
  const profilUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cBG,
      drawer: const MenuSide(),
      appBar: buildAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Stack(children: [
        Column(children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.5 + 10,
            child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: pColor),
                child: Stack(children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 20),
                    child: Text("Dashboard",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: kColor,
                            fontFamily: 'RobotoMedium',
                            fontSize: 20)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 130),
                      child: Center(
                          child: Container(
                              width: size.width * 0.4 - 20,
                              height: size.height * 0.2 - 10,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: logoColor),
                              child: const Center(
                                  child: Text(
                                "FOTO PROFIL",
                                style: TextStyle(
                                    fontFamily: "PoppinsBold",
                                    fontSize: 12,
                                    color: pColor),
                              ))))),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 180, left: 80, bottom: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Nama\t\t\t\t\t\t\t\t\t\t\t\t:\t\t\t\t\t"
                                  "Nama",
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                    "ID\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t:\t\t\t\t\t"
                                    "ID"),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text(
                                    "Profesi\t\t\t\t\t\t\t\t\t\t:\t\t\t\t\t"
                                    "Profesi"),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text("Spesialis\t\t\t\t\t\t\t:\t\t\t\t\t"
                                    "Spesialis"),
                              )
                            ],
                          ),
                        ],
                      ))
                ])),
          ),
          SizedBox(
            height: size.height * 0.3 - 15,
          ),
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
        ]),
      ]))),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: cBG,
      shadowColor: cBG,
    );
  }
}

class MenuSide extends StatelessWidget {
  const MenuSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      const DrawerHeader(
          decoration: BoxDecoration(
            color: pColor,
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage(
                'assets/images/New Logo.png',
              ),
            ),
          ),
          child: null),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('Setting'),
        onTap: () => {},
      ),
      const SizedBox(
        height: 20 * 20 - 30,
      ),
      Container(
          padding: const EdgeInsets.only(right: 20),
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(logoColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("Keluar");
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HalamanLogin()),
                      (Route<dynamic> route) => false);
                });
              },
              child: const Text("Keluar"))),
    ]));
  }
}
