import 'package:fairship_agent/utils/shared/CustomRaisedButton.dart';
import 'package:flutter/material.dart';
import './widgets/top_design.dart';
import './widgets/bottom_design.dart';
import 'package:fairship_agent/utils/shared/CustomTextFormField.dart';
import 'package:fairship_agent/constants.dart';

class LoginScreen extends StatelessWidget {
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                      ),
                      child: Text("Please put in your details to continue"),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    CustomTextFormField(
                      labelText: "Email / Username",
                      hintText: "JohnDee@gmail.com",
                    ),
                    CustomTextFormField(
                      labelText: "Password",
                      hintText: "*******",
                      icon: Icon(Icons.visibility_off),
                      obscureText: true,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text("Remember me"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: CustomRaisedButton(
                        title: "Log In",
                        onPress: () {
                          // Navigator.of(context).pushNamed(kDashboardScreen);
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context).pushNamed(kRegisterAs);
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              BottomDesign()
            ],
          ),
        ),
      ),
    );
  }
}
