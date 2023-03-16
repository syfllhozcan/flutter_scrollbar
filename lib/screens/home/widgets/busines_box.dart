import 'package:flutter/material.dart';
import '../../../constants.dart';

class BusinesBox extends StatelessWidget {
  const BusinesBox({Key? key, required this.x, required this.renk})
      : super(key: key);
  final double x;
  final Color renk;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330 * x,
      height: 590 * x,
      padding: EdgeInsets.fromLTRB(27 * x, 14 * x, 27 * x, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: renk,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [businesKutuTarihSaat(), businesKutuCircleIcon()],
          ),
          businesKutuBusinesDevelopmentYazisi(),
          kSizedBox12h,
          businesKutuMetin(),
          kSizedBox14h,
          businesKutuMeetinLocationYazisi(),
          kSizedBox18h,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  inveted(),
                  notes(),
                ],
              ),
              SizedBox(
                height: 16 * x,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  agenda(),
                  decisions(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container businesKutuTarihSaat() {
    return Container(
      height: 26 * x,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white.withOpacity(0.5),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17 * x),
        child: Center(
          child: Text(
            '!0:00 - 10:40 April 2021',
            style: TextStyle(
                fontSize: 12 * x, fontFamily: 'Ragular', color: Colors.white),
          ),
        ),
      ),
    );
  }

  CircleAvatar businesKutuCircleIcon() {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30 * x,
      child: Image.asset(
        'assets/images/beyaz_konusmaci.png',
        width: 36 * x,
      ),
    );
  }

  Container businesKutuBusinesDevelopmentYazisi() {
    return Container(
      height: 76 * x,
      child: Text(
        'Busines \nDevelopment',
        style: TextStyle(
            fontSize: 30 * x,
            fontWeight: FontWeight.bold,
            fontFamily: 'Open Sans',
            color: Colors.white),
      ),
    );
  }

  Container businesKutuMetin() {
    return Container(
      height: 38 * x,
      child: Text(
        'President Biden will lay out the details of \nhis American Families Plan in an address...',
        style: TextStyle(
            fontSize: 14 * x, fontFamily: 'Regular', color: Colors.white),
      ),
    );
  }

  Container businesKutuMeetinLocationYazisi() {
    return Container(
      height: 19 * x,
      child: Text(
        'Miting location',
        style: TextStyle(
            fontSize: 14 * x,
            fontWeight: FontWeight.bold,
            fontFamily: 'Regular',
            color: Colors.white),
      ),
    );
  }

  Container inveted() {
    return Container(
      width: 130 * x,
      height: 150 * x,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 14 * x, vertical: 15 * x),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              'assets/images/mesaj_mektup.png',
              height: 25 * x,
            ),
          ),
          SizedBox(
            height: 5 * x,
          ),
          Container(
            height: 19 * x,
            child: Text(
              '6 inveted',
              style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 14 * x,
                  fontFamily: 'Regular'),
            ),
          ),
          SizedBox(
            height: 4 * x,
          ),
          Container(
            height: 28 * x,
            child: Text(
              '2 accept, 2 rejection, \n2 waiting',
              style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 10 * x,
                  fontFamily: 'Regular'),
            ),
          ),
          SizedBox(
            height: 9 * x,
          ),
          Container(
              child: Image.asset(
            'assets/images/Group 99.png',
            height: 30 * x,
          ))
        ],
      ),
    );
  }

  Container notes() {
    return Container(
      width: 130 * x,
      height: 150 * x,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 14 * x, vertical: 15 * x),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              'assets/images/not.png',
              height: 25 * x,
            ),
          ),
          SizedBox(
            height: 5 * x,
          ),
          Container(
            height: 19 * x,
            child: Text(
              '6 notes',
              style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 14 * x,
                  fontFamily: 'Regular'),
            ),
          ),
          SizedBox(
            height: 4 * x,
          ),
          Container(
            height: 14 * x,
            child: Text(
              '3 private, 4 pablic',
              style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 10 * x,
                  fontFamily: 'Regular'),
            ),
          ),
          SizedBox(
            height: 11 * x,
          ),
          Container(
            child: Text(
              '· Note Note Note...\n· Note Note Note...\n· Note Note Note...',
              style: TextStyle(fontSize: 10 * x, fontFamily: 'Ragular'),
            ),
          )
        ],
      ),
    );
  }

  Container agenda() {
    return Container(
      width: 130 * x,
      height: 150 * x,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.fromLTRB(14 * x, 15 * x, 14 * x, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              'assets/images/notlar.png',
              height: 26 * x,
            ),
          ),
          SizedBox(
            height: 5 * x,
          ),
          Container(
            height: 19 * x,
            child: Text(
              'agenda',
              style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 14 * x,
                  fontFamily: 'Regular'),
            ),
          ),
          SizedBox(
            height: 6 * x,
          ),
          Container(
            child: Text(
              '1. Agenda Agenda \n2. Agenda Agenda \n3. Agenda Agenda \n4. Agenda Agenda \n5. Agenda Agenda',
              style: TextStyle(fontSize: 10 * x, fontFamily: 'Ragular'),
            ),
          )
        ],
      ),
    );
  }

  Container decisions() {
    return Container(
      width: 130 * x,
      height: 150 * x,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.fromLTRB(14 * x, 15 * x, 14 * x, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              'assets/images/decisions.png',
              height: 26 * x,
            ),
          ),
          SizedBox(
            height: 5 * x,
          ),
          Container(
            height: 19 * x,
            child: Text(
              'decisions',
              style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 14 * x,
                  fontFamily: 'Regular'),
            ),
          ),
          SizedBox(
            height: 6 * x,
          ),
          Container(
            child: Text(
              '1. Decisions Decisions \n2. Decisions Decisions \n3. Decisions Decisions \n4. Decisions Decisions \n5. Decisions Decisions',
              style: TextStyle(fontSize: 10 * x, fontFamily: 'Ragular'),
            ),
          )
        ],
      ),
    );
  }
}
