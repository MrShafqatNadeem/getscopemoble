import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:getscopemobile/CommonWidgets/get_scope_top.dart';
import 'package:getscopemobile/Constants/get_scope_images.dart';
import 'package:getscopemobile/Views/login_screen.dart';

import '../CommonWidgets/custom_button.dart';
import '../CommonWidgets/labled_text_field_widget.dart';
import '../Constants/app_strings.dart';
import '../Helpers/extensions.dart';
import '../Helpers/navigators.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      AppStrings.getString("Give us a try"),
                      style: CustomLargeTextTextStyle(context)!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    Image.asset(GetScopeImages.register)
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.getString("Sign up for free"),
                    style: CustomSmallTextTextStyle(context)!
                        .copyWith(fontSize: 16),
                  ),
                ),
                LabledTextField(
                    lable: AppStrings.getString("Your name"),
                    hint: AppStrings.getString("Enter your name"),
                    onchange: (value) {}),
                LabledTextField(
                    lable: AppStrings.getString("E-mail"),
                    hint: AppStrings.getString("Enter your email"),
                    onchange: (value) {}),
                LabledTextField(
                    lable: AppStrings.getString("Password"),
                    hint: AppStrings.getString("Enter your password"),
                    onchange: (value) {}),
                Row(
                  children: [
                    CustomButton(
                        text: AppStrings.getString("Sign up"),
                        onPressed: () {
                          // CustomNavigator.goNextAndKeepHistory(context: context, widget: ForgetPasswordSentScreen());
                        }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                            text: AppStrings.getString("Already have "),
                            style: CustomSmallTextTextStyle(context)!
                                .copyWith(fontSize: 16),
                            children: [
                              TextSpan(
                                text: AppStrings.getString('an account?'),
                                style: CustomSmallTextTextStyle(context)!
                                    .copyWith(
                                        decoration: TextDecoration.underline,
                                        fontSize: 16),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    CustomNavigator.goNextAndKeepHistory(
                                        context: context,
                                        widget: const LoginScreen());
                                  },
                              )
                            ]),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
