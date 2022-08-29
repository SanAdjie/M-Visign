import 'package:flutter/material.dart';
import '../utility/constant.dart';
import '../components/reusable_bg1.dart';
import '../components/reusable_bottomNavBar.dart';

class Dashboard2 extends StatefulWidget {
  const Dashboard2({Key? key}) : super(key: key);
  //Property
  //Constructor
  //Method
  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  //Property (State)
  int indexItemNavBar = 1;

  //Method
  void bottomAppBarStateChange(int index) {
    index == 0? Navigator.pop(context) : null;
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
            body: Stack(
              children: <Widget>[
                ReusableBg1(),
                Column(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(45, 30, 40, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text("Informasi Kamar", style: kStyleMenuHeader),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                                child: null
                              )
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
            bottomNavigationBar: SizedBox(
                height: 60,
                child: ReusableBottomNavBar(indexItemNavBar: indexItemNavBar, onTap: bottomAppBarStateChange))
        ),
      ),
    );
  }
}
