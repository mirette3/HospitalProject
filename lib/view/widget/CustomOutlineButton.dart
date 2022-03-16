import 'package:flutter/material.dart';
import '../../constants.dart';
import 'custom_text.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  var onPressed;
  double fontSizetext;

  CustomOutlineButton({this.text = " ", this.onPressed,this.fontSizetext=13});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            primary: Colors.white,
            side: BorderSide(
              color: black2,
            )),
        child: CustomText(
          text: text,
          fontSize: fontSizetext,
          color: lightMintGreen,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
