import 'package:flutter/material.dart';

class BottomDesign extends StatelessWidget {
  const BottomDesign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Row(
            children: [
              Image.asset(
                "assets/images/left_ic.png",
                width: 60,
                height: 100,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/middle_ic.png",
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
