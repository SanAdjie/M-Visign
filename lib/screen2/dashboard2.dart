import 'package:flutter/material.dart';
import '../screen2/kamar2.dart';
import '../utility/constant.dart';
import '../components/reusable_bg1.dart';
import '../components/reusable_bottomNavBar.dart';
import '../components/reusable_ruang.dart';

class Dashboard2 extends StatefulWidget {
  const Dashboard2({Key? key}) : super(key: key);
  //Property
  static String id = "Dasboard";
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
      Ruang(namaRuang: "Ruang Kamboja ", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Kamboja")));
      }),
      Ruang(namaRuang: "Ruang Anggrek ", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Anggrek")));
      }),
      Ruang(namaRuang: "Ruang Melati ", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Melati")));
      }),
      Ruang(namaRuang: "Ruang Dahlia", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Dahlia")));
      }),
      Ruang(namaRuang: "Ruang Bougenville", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Bougenville")));
      }),
      Ruang(namaRuang: "Ruang Raflesia", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Raflesia")));
      }),
      Ruang(namaRuang: "Ruang Tulip", onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Kamar2("Ruang Tulip")));
      }),
    ];

    List <Widget> icd = const [
      NomerICD(nomerICD: "A00 - A09"),
      NamaICD(namaICD: "Intestinal Infectious Diseases"),
      NomerICD(nomerICD: "A15 - A19"),
      NamaICD(namaICD: "Tuberculosis"),
      NomerICD(nomerICD: "A20 - A28"),
      NamaICD(namaICD: "Certain Zoonotic Bacterial Diseases"),
      NomerICD(nomerICD: "A30 - A49"),
      NamaICD(namaICD: "Other Bacterial Diseases"),
      NomerICD(nomerICD: "A50 - A64"),
      NamaICD(namaICD: "Infections With a Predominantly Sexual Mode of Transmission"),
      NomerICD(nomerICD: "A65 - A69"),
      NamaICD(namaICD: "Other Spirochaetal Diseases"),
      NomerICD(nomerICD: "A70 - A74"),
      NamaICD(namaICD: "Other Diseases Caused by Chlamydiae"),
      NomerICD(nomerICD: "A75 - A79"),
      NamaICD(namaICD: "Rickettsioses"),
      NomerICD(nomerICD: "A80 - A89"),
      NamaICD(namaICD: "Viral Infections of the Central Nervous System"),
      NomerICD(nomerICD: "A92 - A99"),
      NamaICD(namaICD: "Arthropod-Borne Viral Fevers and Viral Haemorrhagic Fevers"),
      NomerICD(nomerICD: "B00 - B09"),
      NamaICD(namaICD: "Viral Infections Characterized by Skin and Mucous Membrane Lesions"),
      NomerICD(nomerICD: "B15 - B19"),
      NamaICD(namaICD: "Viral Hepatitis"),
      NomerICD(nomerICD: "B20 - B24"),
      NamaICD(namaICD: "Human Immunodeficiency Virus [HIV] Disease"),
      NomerICD(nomerICD: "B25 - B34"),
      NamaICD(namaICD: "Other Viral Diseases"),
      NomerICD(nomerICD: "B35 - B49"),
      NamaICD(namaICD: "Mycoses"),
      NomerICD(nomerICD: "B50 - B64"),
      NamaICD(namaICD: "Protozoal Diseases"),
      NomerICD(nomerICD: "B65 - B83"),
      NamaICD(namaICD: "Helminthiases"),
      NomerICD(nomerICD: "B85 - B89"),
      NamaICD(namaICD: "Pediculosis, Acariasis and Other Infestations"),
      NomerICD(nomerICD: "B90 - B94"),
      NamaICD(namaICD: "Sequalae of Infectious and Parasitic Diseases"),
      NomerICD(nomerICD: "B95 - B98"),
      NamaICD(namaICD: "Bacterical, Viral and Other Infectious Agents"),
      NomerICD(nomerICD: "B99 - B99"),
      NamaICD(namaICD: "Other Infectious Diseases"),
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
                                margin: const EdgeInsets.only(bottom: 20, top: 10),
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 40),
                                      color: kColorBlue6,
                                      child: const Text("ICD", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
                                    kSpacer10,
                                    Flexible(
                                      child: GridView.count(
                                        mainAxisSpacing: 5,
                                        crossAxisSpacing: 5,
                                        childAspectRatio: 3/1,
                                        crossAxisCount: 2,
                                        children: icd
                                      ),
                                    )
                                  ],
                                )
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

///STATELESS CLASSES
class NamaICD extends StatelessWidget {
  final String namaICD;
   const NamaICD({Key? key, required this.namaICD}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 4),
      color: kColorBlue6,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(namaICD,
          overflow: TextOverflow.fade,
          style: const TextStyle(fontSize: 13)),
      )
    );
  }
}

class NomerICD extends StatelessWidget {
  final String nomerICD;
  const NomerICD({Key? key, required this.nomerICD}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColorBlue6,
      child: Center(
          child: Text(nomerICD,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              textAlign: TextAlign.center)
      )
    );
  }
}



