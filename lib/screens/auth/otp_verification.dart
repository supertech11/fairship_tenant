import 'dart:async';

import 'package:fairship_agent/utils/shared/CustomRaisedButton.dart';
import 'package:flutter/material.dart';
import './widgets/top_design.dart';
import './widgets/bottom_design.dart';
import 'package:fairship_agent/utils/shared/CustomTextFormField.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:fairship_agent/constants.dart';

class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final formKey = GlobalKey<FormState>();
  bool hasError = false;
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  StreamController<ErrorAnimationType> errorController;

  @override
  void initState() {
    // TODO: implement initState
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.07,
              ),
              TopDesign(),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's get \nyou Verified",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Enter The 4 digit code sent to your number ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "+234 0800 234 5678 ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: "Not my number? ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Edit",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor))
                      ]),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 0),
                          child: PinCodeTextField(
                            appContext: context,
                            pastedTextStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 4,
                            obscureText: false,
                            obscuringCharacter: '*',
                            blinkWhenObscuring: true,
                            animationType: AnimationType.fade,
                            validator: (v) {
                              // if (v.length < 3) {
                              //   return "Invalid OTP";
                              // } else {
                              //   return null;
                              // }
                            },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(15),
                              inactiveFillColor: Colors.grey,
                              selectedFillColor: Colors.grey,
                              selectedColor: Theme.of(context).primaryColor,
                              activeColor: Theme.of(context).primaryColor,
                              fieldHeight: 50,
                              fieldWidth: 60,
                              activeFillColor:
                                  hasError ? Colors.orange : Colors.white,
                            ),
                            cursorColor: Colors.black,
                            animationDuration: Duration(milliseconds: 300),
                            backgroundColor: Colors.white,
                            enableActiveFill: true,

                            errorAnimationController: errorController,
                            controller: textEditingController,
                            keyboardType: TextInputType.number,
                            boxShadows: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                color: Colors.black12,
                                blurRadius: 10,
                              )
                            ],
                            onCompleted: (v) async {
                              print("Completed");
                              // await signup(context);
                            },
                            // onTap: () {
                            //   print("Pressed");
                            // },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: CustomRaisedButton(
                        title: "Next",
                        onPress: () {
                          // Navigator.of(context).pushNamed(kChooseServiceScreen);
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't get the code?"),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context).pushNamed(kRegisterAs);
                          },
                          child: Text(
                            " Resend",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              BottomDesign()
            ],
          ),
        ),
      ),
    );
  }
}
