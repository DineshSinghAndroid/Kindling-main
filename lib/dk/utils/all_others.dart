import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

//Common addHeight Width
SizedBox addHeight(double size) => SizedBox(height: size.h);

SizedBox addWidth(double size) => SizedBox(width: size.w);

//Common Container Decoration
BoxDecoration commonBoxDecoration(borderColor) {
  return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      border: Border.all(
        color: borderColor,
        width: (1.0),
      ));
}
