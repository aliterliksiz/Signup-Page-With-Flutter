import 'package:flutter/material.dart';
import 'package:signup_page/components/text_field_container.dart';
import 'package:signup_page/constans.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            icon: Icon(
              icon,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
