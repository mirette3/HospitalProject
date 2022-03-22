import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospital_project/constants.dart';
import 'package:hospital_project/model/login.dart';
import 'package:hospital_project/view/widget/CustomButton.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Login>(
      builder: (context,model,child){
        return  Stack(
          //alignment: AlignmentDirectional.topStart,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset("assets/login/Rectangle 3.svg")),
            Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset("assets/login/Rectangle 2.svg")),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 15,vertical:MediaQuery.of(context).size.height / 40 ),
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
                        TextFormField(
                          controller: emailController,
                          validator: (value) {
                            final emailValid =RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                            if (value!.isEmpty || value.trim().isEmpty) {
                              return "email must be not empty";
                            } else if (emailValid.hasMatch(value)) {
                              return "email must be in correct format";
                            } else {
                              return null;
                            }
                          },
                          //keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          cursorColor: mintGreenDark2,
                          decoration: InputDecoration(
                            labelText: "Email",
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        TextFormField(
                          onTap: (){
                            model.openEye();
                          },
                          obscureText: model.isShow ? true:false,
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
                          textInputAction: TextInputAction.done,
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
                                  "assets/login/Group 337.svg",
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
                            suffixIcon: model.isShow? Icon(
                              Icons.visibility,
                              color: mintGreenDark2,
                            ): Icon(
                              Icons.visibility_off,
                              color: mintGreenDark2,
                            ),
                          ),
                        ),
                        Align(
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        CustomButton(
                          onpressed: () {
                            formkey.currentState!.save();
                            print("hereeeeeeeeeee");
                            if (formkey.currentState!.validate()) {
                              print(emailController.text);
                              print(passwordController.text);
                              model.signIn(temail: emailController.text, tpassword: passwordController.text);
                            }
                            return null;
                          },
                          color: mintGreenDark1,
                          text: "Log In",
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
      ),
    );
  }
}
