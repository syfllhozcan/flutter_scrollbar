import 'package:flutter/material.dart';
import 'package:mirach_example/screens/home/businesOrta.dart';
import 'package:mirach_example/screens/home/businesSag.dart';
import 'package:mirach_example/screens/home/businesSol.dart';
import 'package:mirach_example/screens/home/meetingSag.dart';
import 'package:mirach_example/screens/home/meetingSol.dart';
import 'package:mirach_example/screens/home/widgets/ustWelcomeAlani.dart';

import '../../constants.dart';

class HomeSayfa extends StatelessWidget {
  double h = 844;
  double w = 390;

  @override
  Widget build(BuildContext context) {
    final gen = MediaQuery.of(context).size.width;
    final yuk = MediaQuery.of(context).size.height;
    double x = (yuk / h);
    double y = (gen / w);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 844 * x,
          decoration: homeArkaPlanDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ustWelcomeAlani(x: x),
              Scrollbar(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 1770.5 * x,
                    height: 741 * x,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        meetingSol(x: x),
                        businesSol(x: x),
                        businesOrta(x: x),
                        businesSag(x: x),
                        meetingSag(x: x)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration homeArkaPlanDecoration() {
    return BoxDecoration(
      image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.3), BlendMode.dstATop),
          image: kArkaPlanResmi,
          fit: BoxFit.cover),
    );
  }
}
