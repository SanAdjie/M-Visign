import 'package:flutter/material.dart';
import '../screen2/kamar2.dart';
import '../utility/constant.dart';
import '../components/reusable_bg1.dart';
import '../components/reusable_bottomNavBar.dart';
import '../components/reusable_ruang.dart';

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
  void bottomAppBarStateChange(int index){
    index == 0? Navigator.pop(context) : null;
  }

  @override
  Widget build(BuildContext context) {

    List <Ruang> ruang2 = [
      Ruang(namaRuang: "Ruang Mawar", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Mawar")));
      }),
      Ruang(namaRuang: "Ruang Kemuning", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Kemuning")));
      }),
      Ruang(namaRuang: "Ruang Aster ", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Aster")));
      }),
    ];

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
                        padding: const EdgeInsets.fromLTRB(45, 30, 40, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text("Informasi Kamar", style: kStyleMenuHeader),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(30),
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                                child: null
                              )
                            )]))),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: kColorWhite,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
                        child: GridView.count(
                          childAspectRatio: 125/56,
                          primary: false,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 15,
                          crossAxisCount: 2,
                          children: ruang2,
                        )
                      )
                    )
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



