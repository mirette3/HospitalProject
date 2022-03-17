import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_project/constants.dart';
import 'package:hospital_project/view/widget/CustomButton.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();

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
              Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/loading/Layer 1.png"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    Text(
                      "Welcome back !",
                      style: TextStyle(
                          color: mintGreenDark1,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 90,
                    ),
                    Text("To Continue, Login Now"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 15),
                      child: TextFormField(
                        controller: phoneController,
                        validator: (value) {
                          if (value!.isEmpty || value.trim().isEmpty) {
                            return "phone number must be not empty";
                          } else if (value.length < 11) {
                            return "phone number must be more than 11 number";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        cursorColor: mintGreenDark2,
                        decoration: InputDecoration(
                          labelText: "Phone number",
                          labelStyle: TextStyle(color: mintGreenDark2),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: black2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: mintGreenDark2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                "assets/login/Group 4663.svg",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                "assets/login/Cursor-1.svg",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              // Text("Phone number")
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 15),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        validator: (value) {
                          if (value!.isEmpty || value.trim().isEmpty) {
                            return "password must be not empty";
                          } else if (value.length < 8) {
                            return "phone number must be more than 8 characters";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        cursorColor: mintGreenDark2,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: mintGreenDark2),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: black2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: mintGreenDark2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                "assets/login/fi-rr-lock.svg",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                "assets/login/Cursor-1.svg",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              // Text("Phone number")
                            ],
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: mintGreenDark2,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 15),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            child: Text(
                              "Forget Password ?",
                              style: TextStyle(
                                color: black2,
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {},
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 15),
                      child:
                      // MaterialButton(
                      //   onPressed: (){
                      //   print("hereeeeeeeeeee");
                      //       if (formkey.currentState!.validate()) {
                      //         print(phoneController.text);
                      //         print(passwordController.text);
                      //       }
                      //         return null;
                      // },child: Text("login"),)
                      CustomButton(
                        onpressed: () {
                          formkey.currentState!.save();
                          print("hereeeeeeeeeee");
                          if (formkey.currentState!.validate()) {
                            print(phoneController.text);
                            print(passwordController.text);
                          }
                            return null;

                        },
                        color: mintGreenDark1,
                        text: "Log In",
                      ),
                    )
                  ],
                ),
              ),
              SvgPicture.asset("assets/login/Rectangle 2.svg"),
            ],
          ),
        ],
      ),
    );
  }
}
