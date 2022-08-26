import 'package:flutter/material.dart';
import 'package:wehedev/components/reusable_bg2.dart';
import 'package:wehedev/utility/constant.dart';
import 'package:wehedev/components/reusable_bottomNavBar.dart';

class Main2 extends StatefulWidget {
  const Main2({Key? key}) : super(key: key);

  static const id = "Menu2";

  @override
  State<Main2> createState() => _Main2State();
}

class _Main2State extends State<Main2> {

  int indexItemNavBar = 0;

  @override
  void initState() {
    super.initState();
    //TODO:USER FIREBASE + ASYNC
    //TODO:NETWORKING - JSON FIREBASE
  }

  void bottomAppBarStateChange(int index) {
    setState((){
      indexItemNavBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColorCyan,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottomOpacity: 0.0,
            elevation: 0.0,
            leading: Builder(
              builder: (context) => IconButton(
                  icon: const Icon(Icons.play_arrow),
                  iconSize: 30, color: kColorBlack,
                  onPressed: (){
                    Scaffold.of(context).openDrawer();
                  }))),
          drawer: Drawer(
            elevation: 18,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 18),
              children: <Widget>[
                Container(
                  //width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.width * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/New Logo.png")))),
                Container(
                  padding: null,
                  //width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: kColorGrey3),
                  child: null)])),
          body: Stack(
            children: <Widget>[
              ReusableBg2(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding : const EdgeInsets.fromLTRB(45, 10, 40, 0),
                        decoration: const BoxDecoration(
                          color: kColorWhite,
                          borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text("Profil Tenaga Medis",style: kStyleMenuHeader),
                            kSpacer15,
                            Center(
                                child: GestureDetector(
                                  onTap: null,
                                  //TODO:
                                  child: Container(
                                      width: 143,
                                      height: 146,
                                      decoration: const BoxDecoration(color: kColorCyan, borderRadius : BorderRadius.all(Radius.circular(20))),
                                      child: const Center(
                                        child: Text("Masukkan\nFoto Anda\nDisini ", textAlign: TextAlign.center))))),
                            kSpacer20,
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const <Widget>[
                                        Text("Nama", style: kStyleMenu),
                                        kSpacer10,
                                        Text("ID", style: kStyleMenu),
                                        kSpacer10,
                                        Text("Profesi", style: kStyleMenu),
                                        kSpacer10,
                                        Text("Spesialis", style: kStyleMenu),
                                      ])),
                                Expanded(
                                  flex: 3,
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const <Widget>[
                                          Text(" : ${null}", style: kStyleMenu),
                                          kSpacer10,
                                          Text(" : ${null}", style: kStyleMenu),
                                          kSpacer10,
                                          Text(" : ${null}", style: kStyleMenu),
                                          kSpacer10,
                                          Text(" : ${null}", style: kStyleMenu),
                                        ]))]
                            )
                          ]
                        )
                      )
                  ),
                  Expanded(
                      flex: 2,
                      child: Container())
                ],
              )
            ],
          ),
          bottomNavigationBar: SizedBox(
              height: 60,
              child: ReusableBottomNavBar(indexItemNavBar: indexItemNavBar, onTap: bottomAppBarStateChange)),
        ),
      ),
    );
  }
}


