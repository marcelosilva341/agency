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
        color: Colors.white,
        width: double.infinity,
        height: 70,
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
