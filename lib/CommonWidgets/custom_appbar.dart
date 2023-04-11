import 'package:flutter/material.dart';
import 'package:getscopemobile/Constants/get_scope_colors.dart';
import 'package:getscopemobile/Constants/get_scope_images.dart';
import 'package:getscopemobile/Helpers/extensions.dart';

import '../Constants/app_strings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                color: GetScopeColors.logoBgColor,
                height: 100,
                child: Image.asset(
                  GetScopeImages.logo,
                  fit: BoxFit.fitWidth,
                )),
            Expanded(
              child: Container(
                color: GetScopeColors.appbarBgColor,
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        AppStrings.getString("My Tasks"),
                        textAlign: TextAlign.center,
                        style: CustomLableTextStyle(context)!
                            .copyWith(color: GetScopeColors.whiteColor),
                      ),
                    ),
                    Container(
                      height: 40,
                      color: GetScopeColors.appbarBgColor,
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(GetScopeImages.notifications,
                          fit: BoxFit.cover),
                    ),
                    Container(
                      height: 40,
                      color: GetScopeColors.appbarBgColor,
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(GetScopeImages.settings,
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
