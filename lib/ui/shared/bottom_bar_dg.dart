import 'package:flutter/material.dart';

class BottomBarDg extends StatelessWidget {
  const BottomBarDg({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        width: double.infinity,
        height: 55,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.home,
            ),
            Text('Home')
          ],
        ),
      ),
    );
  }
}
