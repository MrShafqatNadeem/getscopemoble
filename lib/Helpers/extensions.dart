// import 'dart:ui';
//
// extension  CustomTextStyle on TextStyle{
//   TextStyle CustomStyle(){
//    return TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
//   }
//
// }

import 'package:flutter/material.dart';

TextStyle? CustomLableTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleMedium;
}

TextStyle? CustomSmallTextTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleSmall;
}

TextStyle? CustomLargeTextTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.displayLarge;
}

TextStyle? CustomHintStyle(BuildContext context) {
  return Theme.of(context).textTheme.displayMedium;
}
