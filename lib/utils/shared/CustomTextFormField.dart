import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText, initialValue, hintText;
  Icon icon;
  bool obscureText, enabled;
  TextInputType keyboardType;
  TextEditingController controller;
  Function iconPressed, validator, onSaved, onChange;

  CustomTextFormField(
      {this.labelText,
      this.hintText,
      this.icon,
      this.obscureText = false,
      this.enabled = true,
      this.initialValue,
      this.iconPressed = null,
      this.keyboardType = TextInputType.text,
      this.controller,
      this.onSaved,
      this.onChange,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text(
            "$labelText",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Card(
          color: Colors.white.withOpacity(0.6),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            height: 55,
            child: icon != null
                ? TextFormField(
                    key: Key(hintText),
                    controller: controller,
                    onSaved: onSaved,
                    initialValue: initialValue,
                    validator: validator,
                    keyboardType: keyboardType,
                    obscureText: this.obscureText,
                    onChanged: onChange,
                    enabled: enabled,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: this.icon,
                          onPressed: this.iconPressed,
                        ),
                        hintText: hintText,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none),
                  )
                : TextFormField(
                    key: Key(hintText),
                    controller: controller,
                    onSaved: onSaved,
                    validator: validator,
                    initialValue: initialValue,
                    keyboardType: keyboardType,
                    obscureText: this.obscureText,
                    onChanged: onChange,
                    enabled: enabled,
                    decoration: InputDecoration(
                        // suffixIcon: IconButton(
                        //   icon: this.icon,
                        //   onPressed: this.iconPressed,
                        // ),
                        border: InputBorder.none,
                        hintText: hintText,
                        contentPadding: EdgeInsets.all(15),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none),
                  ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
