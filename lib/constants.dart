import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color white1 = Color(0xffFFFFFF);
//const Color white2 = Color(0xffFFFFFF);
const Color black1 = Color(0xff000000);
const Color black2 = Color(0xff404040);
const Color mintGreenDark1 = Color(0xff22C7B8);
const Color mintGreenDark2 = Color(0xff2FBEB0);
const Color gray = Color(0xff707070);
const Color purple = Color(0xff985cdc);
const Color lightMintGreen = Color(0xff84e3da);
const Color blue = Color(0xff609cdc);
const Color lightGreen = Color(0xff60dc8c);
const Color lightBlue = Color(0xff60dcdc);
const Color orange = Color(0xffe0945c);

const double fonttitel=14;
const double fontSmall=13;
const double fontsubtitel=14;
const double SizedBoxheight=10;
const headerStyle = TextStyle(fontSize: 35, fontWeight: FontWeight.w900);
const subHeaderStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700,color:Colors.grey );
const bodyTextStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);
const bodyLabelStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);

Widget horizontalLine(double lineWidth,
    {double lineHeight = 1, Color color = Colors.grey}) {
  return Container(
    height: lineHeight,
    width: lineWidth,
    color: color,
  );
}