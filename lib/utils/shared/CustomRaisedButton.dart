import 'package:flutter/material.dart';
import '../../constants.dart';

class CustomRaisedButton extends StatelessWidget {
  bool isLoading;
  String title;
  Color titleColor, buttonColor;
  double width;
  Icon icon;
  Function onPress;
  CustomRaisedButton({
    this.icon,
    this.title,
    this.onPress,
    this.titleColor = Colors.white,
    this.buttonColor = kPrimaryColor,
    this.width,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: isLoading
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: 20,
                  height: 20,
                  child:
                      CircularProgressIndicator(backgroundColor: Colors.white),
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  icon != null ? icon : Text(""),
                  Text(
                    this.title,
                    style: TextStyle(color: titleColor, fontSize: 20),
                  ),
                ],
              ),
        color: buttonColor,
        disabledColor: Theme.of(context).primaryColor.withOpacity(0.7),
        onPressed: isLoading ? null : this.onPress,
      ),
    );
  }
}
