import 'package:flutter/material.dart';

class viewDetailAlani extends StatelessWidget {
  viewDetailAlani({Key? key, required this.x});

  final double x;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: 330 * x,
        height: 70 * x,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 27 * x),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View Detail',
                  style: TextStyle(fontSize: 20 * x, fontFamily: 'Ragular'),
                ),
                Text(
                  'Chat, Documnets & Other Detail',
                  style: TextStyle(
                    fontSize: 14 * x,
                    fontFamily: 'Ragular',
                    color: Color(0xff7070707),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/sag_ok.png',
              height: 28 * x,
            )
          ],
        ),
      ),
    );
  }
}
