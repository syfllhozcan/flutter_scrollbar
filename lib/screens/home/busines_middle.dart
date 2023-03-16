// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:mirach_example/screens/home/widgets/busines_box.dart';
import 'package:mirach_example/screens/home/widgets/view_detail_space.dart';
import '../../constants.dart';

class businesOrta extends StatelessWidget {
  const businesOrta({required this.x});

  final double x;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20 * x),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 650 * x,
            width: 330 * x,
            child: Stack(
              children: [
                ViewDetailSpoce(x: x),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BusinesBox(
                      x: x,
                      renk: kMavi,
                    ),
                    kSizedBox9h,
                  ],
                ),
              ],
            ),
          ),
          kSizedBox9h,
          Image.asset(
            'assets/images/mic.png',
            height: 60 * x,
          ),
        ],
      ),
    );
  }
}
