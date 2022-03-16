import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_project/constants.dart';
import 'package:hospital_project/view/screens/prototype_map.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 2490), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PrototypeMap()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        SvgPicture.asset("assets/login/Rectangle 3.svg"),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/loading/Group 340.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/10),
                  child: Lottie.asset('assets/loading.json'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Text(
                  "Loading . . .",
                  style: TextStyle(fontSize: 14, color: mintGreenDark1),
                )
              ],
            ),
            SvgPicture.asset("assets/login/Rectangle 2.svg"),
          ],
        ),
      ],
    ));
  }
}
