import 'package:flutter/material.dart';
import 'package:mirach_example/models/meeting.dart';
import '../../../constants.dart';

class MeetingBox extends StatelessWidget {
  const MeetingBox({
    Key? key,
    required this.x,
    required Meeting meetingData,
  })  : _meetingData = meetingData,
        super(key: key);

  final double x;
  final Meeting _meetingData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155 * x,
      height: 190 * x,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10 * x, 10 * x, 10 * x, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                toplantiTarihSaat(),
                SizedBox(
                  width: 5 * x,
                ),
                toplantiCircleIcon(),
              ],
            ),
            SizedBox(
              height: 6 * x,
            ),
            toplantiKonuBasligi(),
            toplantiDetay(),
            SizedBox(
              height: 6 * x,
            ),
            cokluResim(),
          ],
        ),
      ),
    );
  }

  Container toplantiTarihSaat() {
    return Container(
      color: kToplantiTarihiArkaPlanRengi,
      width: 90 * x,
      height: 35 * x,
      child: Center(
        child: Text(
          _meetingData.tarih_saat,
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 12 * x,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container toplantiCircleIcon() {
    return Container(
      width: 40 * x,
      height: 40 * x,
      decoration: BoxDecoration(
        color: kMavi,
        borderRadius: BorderRadius.circular(20 * x),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/konusmaci.png',
          width: 25 * x,
        ),
      ),
    );
  }

  Container toplantiKonuBasligi() {
    return Container(
      child: Text(
        _meetingData.konu,
        style: TextStyle(
          fontFamily: 'Open Sans',
          fontSize: 15 * x,
          fontWeight: FontWeight.bold,
        ),
      ),
      width: 136 * x,
      height: 40 * x,
    );
  }

  Container toplantiDetay() {
    return Container(
      width: 136 * x,
      height: 48 * x,
      child: Text(
        _meetingData.toplanti_detay,
        style: TextStyle(
          fontFamily: 'Regular',
          fontSize: 13 * x,
        ),
      ),
    );
  }

  Image cokluResim() => Image.asset(
        'assets/images/Group 99.png',
        height: 30 * x,
      );
}
