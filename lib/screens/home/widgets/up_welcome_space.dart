import 'package:flutter/material.dart';

class ustWelcomeAlani extends StatelessWidget {
  ustWelcomeAlani({Key? key, required this.x});

  final double x;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25 * x, 46 * x, 25 * x, 27 * x),
      child: Container(
        width: 340 * x,
        height: 27 * x,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Welcome, Safa',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 20 * x,
                color: const Color(0xff1b1c31),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
              width: 55 * x,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/zil_icon.png',
                    width: 18.2 * x,
                  ),
                  SizedBox(
                    width: 18.8 * x,
                  ),
                  Image.asset(
                    'assets/images/menu_icon.png',
                    width: 18 * x,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
