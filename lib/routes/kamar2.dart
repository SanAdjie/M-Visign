import 'package:flutter/material.dart';
import '../utility/constant.dart';
import '../model_view/reusable_bg1.dart';
import '../model_view/reusable_detailkamar.dart';
import '../model_view/reusable_detailinformasikamar.dart';
import '../model_view/reusable_detailstatuskamar.dart';
import '../controller/data_json.dart';

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
  String nama = "-";
  String gender = "-";
  String umur = "0";
  String icd = "-";
  String nomedis = "0";

  bool kondisi1A = true;
  bool kondisi1B = false;
  bool kondisi2A = false;
  bool kondisi2B = false;
  bool kondisi3A = false;
  bool kondisi3B = false;
  bool kondisi4A = false;
  bool kondisi4B = false;
  bool kondisi5A = false;
  bool kondisi5B = false;

  database data = database();

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

  updateUIJSON(String nokamar, String subnomerkamar) async{
    var dataPasien = await data.getData();
    setState((){
      nama = dataPasien[widget.namaKamar][nokamar][subnomerkamar]["nama"];
      gender = dataPasien[widget.namaKamar][nokamar][subnomerkamar]["gender"];
      umur = dataPasien[widget.namaKamar][nokamar][subnomerkamar]["umur"].toString();
      icd = dataPasien[widget.namaKamar][nokamar][subnomerkamar]["ICD"];
      nomedis = dataPasien[widget.namaKamar][nokamar][subnomerkamar]["medis"].toString();
    });
  }

  @override
  void initState(){
    updateUIJSON("kamar1", "1A");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List <Widget> informasi = [
      DetailInformasiKamar(form: "Nama",formValue: nama),
      DetailInformasiKamar(form: "Gender",formValue: gender),
      DetailInformasiKamar(form: "Umur",formValue: umur),
      DetailInformasiKamar(form: "ICD",formValue: icd),
      DetailInformasiKamar(form: "No Medis",formValue: nomedis),
    ];

    List <Widget> kamar = [
      //TODO : [State Management] Seharusnya pake State Management (Provider, GetX, dsb).
      //TODO : [Design Pattern] Sementara masih lifting up State ygy. Tambah MVC Design Pattern lebih bagus~
      //TODO : [WebHook][HTTP] Ambil data JSON dengan HTTP Request tidak Stream / Snapshot ygy~
      DetailKamar(nomerKamar: "1", subNomerKamar1: "1A", subNomerKamar2: "1B", aktivasiA: kondisi1A, aktivasiB: kondisi1B,
       onTap1: () async{
         await updateUIJSON("kamar1", "1A");
         setState((){
           setKondisiAll();
          kondisi1A == false ? kondisi1A = true : kondisi1A = false;
        });
       },
       onTap2: () async{
         await updateUIJSON("kamar1", "1B");
         setState(() {
           setKondisiAll();
           kondisi1B == false ? kondisi1B = true : kondisi1B = false;
         });
       }),
      DetailKamar(nomerKamar: "2", subNomerKamar1: "2A", subNomerKamar2: "2B", aktivasiA: kondisi2A, aktivasiB: kondisi2B,
       onTap1: () async{
         await updateUIJSON("kamar2", "2A");
         setState(() {
           setKondisiAll();
           kondisi2A == false ? kondisi2A = true : kondisi2A = false;
         });
       },
       onTap2: () async{
         await updateUIJSON("kamar2", "2B");
         setState(() {
           setKondisiAll();
           kondisi2B == false ? kondisi2B = true : kondisi2B = false;
         });
       }),
      DetailKamar(nomerKamar: "3", subNomerKamar1: "3A", subNomerKamar2: "3B", aktivasiA: kondisi3A, aktivasiB: kondisi3B,
        onTap1: () async{
          await updateUIJSON("kamar3", "3A");
          setState(() {
            setKondisiAll();
            kondisi3A == false ? kondisi3A = true : kondisi3A = false;
          });
        },
        onTap2: () async{
          await updateUIJSON("kamar3", "3B");
          setState(() {
            setKondisiAll();
            kondisi3B == false ? kondisi3B = true : kondisi3B = false;
          });
        }),
      DetailKamar(nomerKamar: "4", subNomerKamar1: "4A", subNomerKamar2: "4B", aktivasiA: kondisi4A, aktivasiB: kondisi4B,
        onTap1: () async{
          await updateUIJSON("kamar4", "4A");
          setState(() {
            setKondisiAll();
            kondisi4A == false ? kondisi4A = true : kondisi4A = false;
          });
        },
        onTap2: () async{
          await updateUIJSON("kamar4", "4B");
          setState(() {
            setKondisiAll();
            kondisi4B == false ? kondisi4B = true : kondisi4B = false;
          });
        }),
      DetailKamar(nomerKamar: "5", subNomerKamar1: "5A", subNomerKamar2: "5B", aktivasiA: kondisi5A, aktivasiB: kondisi5B,
        onTap1: () async{
          await updateUIJSON("kamar5", "5A");
          setState(() {
            setKondisiAll();
            kondisi5A == false ? kondisi5A = true : kondisi5A = false;
          });
        },
        onTap2: () async{
          await updateUIJSON("kamar5", "5B");
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(45, 30, 40, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Ruang ${widget.namaKamar}", style: kStyleMenuHeader),
                        kSpacer20,
                        SizedBox(
                          height: 50,
                          child: GridView.count(
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0,
                              padding: const EdgeInsets.only(left: 0),
                              childAspectRatio:  1/2,
                              crossAxisCount: 1,
                              scrollDirection: Axis.horizontal,
                              children: kamar)),
                        kSpacer10,
                        Column(children: informasi),
                        kSpacer10])),
                  Expanded(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: kColorWhite,
                              borderRadius: BorderRadius.vertical(top: Radius.circular(35))),
                          child: Container(
                              margin: const EdgeInsets.all(30),
                              decoration: const BoxDecoration(
                                  color: Color(0xFF00B9D0),
                                  borderRadius: BorderRadius.all(Radius.circular(35))),
                            child: Center(
                              child: Table(
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: StatusKamar(
                                          satuanStatus: "%SPO2",
                                          labelStatus: "Kadar Oksigen",
                                          valueStatus: "96",
                                          imgStatus: "oksigen",
                                          kondisiStatus: "normal")),
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: StatusKamar(
                                            satuanStatus: "PRBpm",
                                            labelStatus: "Detak Jantung",
                                            valueStatus: "77",
                                            imgStatus: "jantung",
                                            kondisiStatus: "normal"),
                                      ),
                                    ]
                                  ),
                                  TableRow(
                                      children: [
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: StatusKamar(
                                              satuanStatus: "mmHG",
                                              labelStatus: "Tekanan Darah",
                                              valueStatus: "120/80",
                                              imgStatus: "darah",
                                              kondisiStatus: "normal"),
                                        ),
                                        TableCell(
                                          verticalAlignment: TableCellVerticalAlignment.middle,
                                          child: StatusKamar(
                                              satuanStatus: "Celcius",
                                              labelStatus: "Suhu Tubuh",
                                                valueStatus: "33",
                                              imgStatus: "suhu",
                                              kondisiStatus: "normal"),
                                        ),
                                      ]
                                  ),
                                ],
                              ),
                            ),
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
