import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_project/constants.dart';
import 'package:hospital_project/view/widget/custom_text.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 14),
        child:
            Align(
              alignment: Alignment.center,
              child: Wrap(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), color: blue),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/calls.svg"),
                            SizedBox(height: MediaQuery.of(context).size.height / 80,),
                            CustomText(text: "Calls", color: Colors.white,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 70,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: purple),child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/reports.svg"),
                          SizedBox(height: MediaQuery.of(context).size.height / 80,),
                          CustomText(text: "Reports", color: Colors.white,)
                        ],
                      ),),

                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 30,
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightGreen,
                        ),child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/tasks.svg"),
                          SizedBox(height: MediaQuery.of(context).size.height / 80,),
                          CustomText(text: "Tasks", color: Colors.white,)
                        ],
                      ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 70,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: lightBlue),child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/attendance.svg"),
                          SizedBox(height: MediaQuery.of(context).size.height / 80,),
                          CustomText(text: "Attendance", color: Colors.white,)
                        ],
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/70,
                    width: MediaQuery.of(context).size.width/20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 1,
                      height: MediaQuery.of(context).size.height / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: orange),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(text: "Cases", color: Colors.white,),
                        SvgPicture.asset("assets/icons/cases.svg"),

                      ],
                    ),),

                ],
              ),
            ),


      ),
    );
  }
}
