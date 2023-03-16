import 'package:flutter/material.dart';
import 'package:mirach_example/screens/home/widgets/businesKutu.dart';
import '../../constants.dart';

class businesSol extends StatelessWidget {
  businesSol({Key? key, required this.x});

  final double x;

  @override
  Widget build(BuildContext context) {
    return businesKutu(x: x, renk: kMor);
  }
}
