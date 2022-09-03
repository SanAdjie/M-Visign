import 'package:flutter/material.dart';
import '../utility/constant.dart';
import '../components/reusable_bg1.dart';
import '../components/reusable_detailkamar.dart';
import '../components/reusable_detailinformasikamar.dart';


class Kamar2 extends StatefulWidget {
  //Property
  static const id = "Kamar2";
  final String namaKamar;

  //Constructor
  const Kamar2(this.namaKamar, {Key? key}) : super(key: key);

  @override
  State<Kamar2> createState() => _Kamar2State();
}

class _Kamar2State extends State<Kamar2> {

  //Property / field
  bool kondisi1A = false;
  bool kondisi1B = false;
  bool kondisi2A = false;
  bool kondisi2B = false;
  bool kondisi3A = false;
  bool kondisi3B = false;
  bool kondisi4A = false;
  bool kondisi4B = false;
  bool kondisi5A = false;
  bool kondisi5B = false;

  //TODO: Data (Property) Seharusnya dibuat modular sih
  List <Widget> informasi = const [
    DetailInformasiKamar(form: "Nama",formValue: "Fulan"),
    DetailInformasiKamar(form: "Gender",formValue: "Laki-laki"),
    DetailInformasiKamar(form: "Umur",formValue: "28"),
    DetailInformasiKamar(form: "ICD",formValue: "B15"),
    DetailInformasiKamar(form: "No Medis",formValue: "00607080"),
  ];

  //Methods
  setKondisiAll(){
    setState((){
      kondisi1A = false;
      kondisi1B = false;
      kondisi2A = false;
      kondisi2B = false;
      kondisi3A = false;
      kondisi3B = false;
      kondisi4A = false;
      kondisi4B = false;
      kondisi5A = false;
      kondisi5B = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    List <Widget> kamar = [
      //TODO : Seharusnya pake State Management (Provider, GetX, dsb). Sementara masih lifting up State ygy.
      DetailKamar(nomerKamar: "1", subNomerKamar1: "1A", subNomerKamar2: "1B", aktivasiA: kondisi1A, aktivasiB: kondisi1B,
       onTap1: (){
        setState(() {
          //TODO : State Nama, Gender, Umur, dsb pada [DetailInformasiKamar()]
          setKondisiAll();
          kondisi1A == false ? kondisi1A = true : kondisi1A = false;
        });
       },
       onTap2: (){
         setState(() {
           setKondisiAll();
           kondisi1B == false ? kondisi1B = true : kondisi1B = false;
         });
       }),
      DetailKamar(nomerKamar: "2", subNomerKamar1: "2A", subNomerKamar2: "2B", aktivasiA: kondisi2A, aktivasiB: kondisi2B,
       onTap1: (){
         setState(() {
           setKondisiAll();
           kondisi2A == false ? kondisi2A = true : kondisi2A = false;
         });
       },
       onTap2: (){
         setState(() {
           setKondisiAll();
           kondisi2B == false ? kondisi2B = true : kondisi2B = false;
         });
       }),
      DetailKamar(nomerKamar: "3", subNomerKamar1: "3A", subNomerKamar2: "3B", aktivasiA: kondisi3A, aktivasiB: kondisi3B,
        onTap1: (){
          setState(() {
            setKondisiAll();
            kondisi3A == false ? kondisi3A = true : kondisi3A = false;
          });
        },
        onTap2: (){
          setState(() {
            setKondisiAll();
            kondisi3B == false ? kondisi3B = true : kondisi3B = false;
          });
        }),
      DetailKamar(nomerKamar: "4", subNomerKamar1: "4A", subNomerKamar2: "4B", aktivasiA: kondisi4A, aktivasiB: kondisi4B,
        onTap1: (){
          setState(() {
            setKondisiAll();
            kondisi4A == false ? kondisi4A = true : kondisi4A = false;
          });
        },
        onTap2: (){
          setState(() {
            setKondisiAll();
            kondisi4B == false ? kondisi4B = true : kondisi4B = false;
          });
        }),
      DetailKamar(nomerKamar: "5", subNomerKamar1: "5A", subNomerKamar2: "5B", aktivasiA: kondisi5A, aktivasiB: kondisi5B,
        onTap1: (){
          setState(() {
            setKondisiAll();
            kondisi5A == false ? kondisi5A = true : kondisi5A = false;
          });
        },
        onTap2: (){
          setState(() {
            setKondisiAll();
            kondisi5B == false ? kondisi5B = true : kondisi5B = false;
          });
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
                          children: <Widget>[
                            Text(widget.namaKamar, style: kStyleMenuHeader),
                            kSpacer20,
                            Flexible(
                              /*Tidak Disarankan GridView Menggunakan ChildAspectRatio.
                                UI akan berbeda dalam Screen yang lebih kecil, Misalnya dalam Iphone 8, dsb.
                                GridView didorong keatas oleh ///Spacer().
                                TODO: Gunakan Package flutter_layout_grid
                              */
                              child: GridView.count(
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 0,
                                  padding: EdgeInsets.zero,
                                  childAspectRatio:  1/2,
                                  crossAxisCount: 1,
                                  scrollDirection: Axis.horizontal,
                                  children: kamar)),
                            kSpacer10,
                            Column(
                              children: informasi),
                            const Spacer()
                          ],
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: kColorWhite,
                              borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
                          child: Container(
                              margin: const EdgeInsets.all(30),
                              decoration: const BoxDecoration(
                                  color: Color(0xFF00B9D0),
                                  borderRadius: BorderRadius.all(Radius.circular(35)))
                          )
                      )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


