import 'package:flutter/material.dart';
import 'package:getscopemobile/CommonWidgets/custom_button.dart';
import 'package:getscopemobile/CommonWidgets/get_scope_top.dart';
import 'package:getscopemobile/CommonWidgets/labled_text_field_widget.dart';
import 'package:getscopemobile/Helpers/navigators.dart';

import '../Constants/app_strings.dart';
import '../Helpers/extensions.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GetScopeTop(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
            child: Column(
              children: [
                Text(
                  AppStrings.getString("Forgot Password"),
                  style: CustomLargeTextTextStyle(context),
                ),
                LabledTextField(
                    lable: AppStrings.getString("E-mail"),
                    hint: AppStrings.getString("Enter your email"),
                    onchange: (value) {}),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CustomButton(
                        text: AppStrings.getString("Send"),
                        onPressed: () {
                          CustomNavigator.goNextAndKeepHistory(
                              context: context,
                              widget: ForgetPasswordSentScreen());
                        }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ForgetPasswordSentScreen extends StatefulWidget {
  const ForgetPasswordSentScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordSentScreen> createState() =>
      _ForgetPasswordSentScreenState();
}

class _ForgetPasswordSentScreenState extends State<ForgetPasswordSentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GetScopeTop(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
            child: Column(
              children: [
                Text(
                  AppStrings.getString("Forgot Password"),
                  style: CustomLargeTextTextStyle(context),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 10.0),
                  child: Text(
                    AppStrings.getString(
                        "We have sent you new login link to \"ronaldvermeijs@msn.com\""),
                    style: CustomSmallTextTextStyle(context)!
                        .copyWith(fontSize: 16),
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CustomButton(
                        text: AppStrings.getString("To Login"),
                        onPressed: () {}))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
