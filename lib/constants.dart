import 'package:flutter/material.dart';

//// Boyutları Cihazlara göre ayarlama Global değişkenler
BuildContext context = context;
double h = 844;
double w = 390;
final gen = MediaQuery.of(context).size.width;
final yuk = MediaQuery.of(context).size.height;
double x = (yuk / h);
double y = (gen / w);
////////////

const kbeyaz = Colors.white;
const kToplantiTarihiArkaPlanRengi = Color(0xFFE6E6E6);
const kSari = Color(0xffe5b42e);
const kMor = Color(0xff6e1679);
const kMavi = Color(0xff5a60ff);
const bold = FontWeight.bold;
const kSizedBox9h = SizedBox(height: 9);
const kSizedBox5h = SizedBox(height: 5);
const kSizedBox10h = SizedBox(height: 10);
const kSizedBox12h = SizedBox(height: 12);
const kSizedBox14h = SizedBox(height: 14);
const kSizedBox18h = SizedBox(height: 18);
const kArkaPlanResmi = AssetImage('assets/images/home_arka.jpg');

