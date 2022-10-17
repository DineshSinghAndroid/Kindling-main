import 'dart:ui';

import 'package:kindling/dk/utils/colors.dart';
import 'package:kindling/dk/utils/text_styles.dart';

import '../../utils/constants/colors.dart';
import 'package:flutter/material.dart';

TextFormField commonTextFormField(hintTxt) {
  String? labelTxt;
  return TextFormField(
    cursorColor: AppColors.blue,
    decoration: InputDecoration(
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: DkColors.borderColor,
          width: .5,
        )),
        enabledBorder: commonOutlineInputBorder(),
        disabledBorder: commonOutlineInputBorder(),
        errorBorder: commonOutlineInputBorder(),
        focusedBorder: commonOutlineInputBorder(),
        focusedErrorBorder: commonOutlineInputBorder(),

        // prefixIcon: Container(
        //   // width: 120.0,
        //     child: Icon(Icons.person_outline_outlined, color: Colors.black26,)
        // ),
        labelText: labelTxt,
        hintText: hintTxt,
        hintStyle: DkTextStyle.size16WithW500),
    keyboardType: TextInputType.name,
    validator: (value) {
      if (value?.isEmpty ?? true) {
        return "Your Name is required";
      } else if (value!.trim().length < 2) {
        return "Your Name is too short.";
      }
      return null;
    },
    // onSaved: (input) => addressTitle = input.trim(),
  );
}

OutlineInputBorder commonOutlineInputBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide(color: DkColors.borderColor, width: .5));
}
