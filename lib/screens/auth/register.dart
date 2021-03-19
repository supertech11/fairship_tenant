import 'package:flutter/material.dart';
import 'package:fairship_agent/utils/shared/CustomTextFormField.dart';
import 'package:fairship_agent/utils/shared/CustomRaisedButton.dart';
import 'package:fairship_agent/constants.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration Form",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                labelText: "First Name",
              ),
              CustomTextFormField(
                labelText: "Last Name",
              ),
              CustomTextFormField(
                labelText: "Password",
              ),
              CustomTextFormField(
                labelText: "Phone Number",
              ),
              CustomTextFormField(
                labelText: "Employee Identification Number",
              ),
              CustomTextFormField(
                labelText: "Home Address",
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Text(
                  "Use Current Location",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Terms of service ",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor)),
                        TextSpan(
                            text: "and ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Privacy Policy.",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor))
                      ]),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: CustomRaisedButton(
                  title: "Register",
                  onPress: () {
                    // Navigator.of(context).pushNamed(kOtpVerificationScreen);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
