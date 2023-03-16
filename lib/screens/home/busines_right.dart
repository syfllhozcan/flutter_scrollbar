import 'package:flutter/material.dart';
import 'package:mirach_example/screens/home/widgets/busines_box.dart';
import '../../constants.dart';

class businesSag extends StatelessWidget {
  businesSag({Key? key, required this.x});

  final double x;

  @override
  Widget build(BuildContext context) {
    return BusinesBox(x: x, renk: kSari);
  }
}
