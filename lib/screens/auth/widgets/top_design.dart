import 'package:flutter/material.dart';

class TopDesign extends StatelessWidget {
  const TopDesign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Row(
            children: [
              Image.asset(
                "assets/images/middle_ic.png",
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/right_ic.png",
                width: 60,
                height: 100,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
