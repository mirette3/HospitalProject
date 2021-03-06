import 'package:flutter/material.dart';
import '../../constants.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {

  final String text;
 var onpressed;
  final Color color;



  CustomButton({this.text=" ", required this.onpressed,this.color=mintGreenDark1,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  MaterialButton(
          onPressed: onpressed,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          padding: EdgeInsets.all(20),
          color:color ,
          child: Container(
            width:  MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: CustomText(
              text: text,
              color:Colors.white ,
              alignment: Alignment.center,
            ),
          )

      ),
    );
  }
}