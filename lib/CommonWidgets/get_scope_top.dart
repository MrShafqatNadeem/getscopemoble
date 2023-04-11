import 'package:flutter/material.dart';

import '../Constants/get_scope_colors.dart';
import '../Constants/get_scope_images.dart';

class GetScopeTop extends StatelessWidget {
  const GetScopeTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: GetScopeColors.logoBgColor,
        child: Image.asset(GetScopeImages.logoWithName));
  }
}
