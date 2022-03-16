import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_project/constants.dart';
import 'package:hospital_project/view/widget/CustomOutlineButton.dart';

import '../widget/custom_text.dart';

class PrototypeMap extends StatelessWidget {
  const PrototypeMap({Key? key}) : super(key: key);

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
            SvgPicture.asset("assets/login/Rectangle 2.svg"),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text:"Prototype Map ",fontWeight: FontWeight.bold, ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/20,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOutlineButton(
                        text: 'Doctor',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/50,
                      ),
                      CustomOutlineButton(
                        text: 'Receptionist',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/50,
                      ),
                      CustomOutlineButton(
                        text: 'Nurse',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/50,
                      ),
                      CustomOutlineButton(
                        text: 'Analysis Employee',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/50,
                      ),
                      CustomOutlineButton(
                        text: 'Manager',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/50,
                      ),
                      CustomOutlineButton(
                        text: 'HR',
                      ),
                    ],
                  ),

                ],
              ),
            ),
            // Spacer(),
            // SvgPicture.asset("assets/login/Rectangle 2.svg"),
          ],
        ),
      ],
    ));
  }
}
