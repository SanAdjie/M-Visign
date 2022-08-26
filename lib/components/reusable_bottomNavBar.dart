import 'package:flutter/material.dart';
import 'package:wehedev/utility/constant.dart';

class ReusableBottomNavBar extends StatelessWidget {

  final void Function(int)? onTap;

  const ReusableBottomNavBar({
    Key? key,
    required this.indexItemNavBar, required this.onTap
  }) : super(key: key);

  final int indexItemNavBar;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: kColorCyan,
      backgroundColor: kColorGrey2,
      currentIndex: indexItemNavBar,
      iconSize: 25,
      onTap: onTap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profil"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard"
        )
      ],
    );
  }
}
