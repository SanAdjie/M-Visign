import 'package:flutter/material.dart';

class Ruang extends StatelessWidget {

  final namaRuang;
  final VoidCallback onTap;

  const Ruang({required this.namaRuang, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFFC0CAFC),
                    Color(0x8D44A3FC)],
                  tileMode: TileMode.mirror),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(namaRuang),
              const Icon(Icons.bed, size: 40)
            ],
          ),
        ));
  }
}
