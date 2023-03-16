import 'package:flutter/material.dart';
import 'package:mirach_example/models/meeting.dart';
import 'package:mirach_example/screens/home/widgets/meeting_box.dart';

class meetingSag extends StatelessWidget {
  meetingSag({Key? key, required this.x});

  final double x;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330 * x,
      height: 710 * x,
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 190 * x,
              childAspectRatio: 155 / 190,
              crossAxisSpacing: 20 * x,
              mainAxisSpacing: 20 * x),
          itemCount: meetingData.length,
          itemBuilder: (BuildContext context, index) {
            return MeetingBox(x: x, meetingData: meetingData[index]);
          }),
    );
  }
}
