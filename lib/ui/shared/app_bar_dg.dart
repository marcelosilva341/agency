import 'package:flutter/material.dart';

class AppBarDg extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDg({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'DG AGENCY',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image.asset(
          'assets/logo.png',
          height: 45,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(100, 50);
}
