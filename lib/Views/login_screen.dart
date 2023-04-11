import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:getscopemobile/Constants/get_scope_images.dart';
import 'package:getscopemobile/Helpers/navigators.dart';
import 'package:getscopemobile/Views/forget_password_screen.dart';

import '../CommonWidgets/custom_button.dart';
import '../CommonWidgets/get_scope_top.dart';
import '../CommonWidgets/labled_text_field_widget.dart';
import '../Constants/app_strings.dart';
import '../Helpers/extensions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetScopeTop(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                children: [
                  Image.asset(GetScopeImages.inLoggen),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(AppStrings.getString("Login"),
                            style: CustomLableTextStyle(context)!
                                .copyWith(fontSize: 24))),
                  ),
                  LabledTextField(
                    lable: AppStrings.getString("E-mail"),
                    hint: AppStrings.getString("Enter your e-mail"),
                    onchange: (text) {},
                  ),
                  LabledTextField(
                    lable: AppStrings.getString("Password"),
                    hint: AppStrings.getString("Enter your password"),
                    onchange: (text) {},
                  ),
                  Row(
                    children: [
                      CustomButton(
                        onPressed: () {},
                        text: AppStrings.getString("Login"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                              text: AppStrings.getString("Forgot your login "),
                              style: CustomSmallTextTextStyle(context)!
                                  .copyWith(fontSize: 16),
                              children: [
                                TextSpan(
                                  text: AppStrings.getString('click here'),
                                  style: CustomSmallTextTextStyle(context)!
                                      .copyWith(
                                          decoration: TextDecoration.underline,
                                          fontSize: 16),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      CustomNavigator.goNextAndKeepHistory(
                                          context: context,
                                          widget: const ForgetPasswordScreen());
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
      ),
    );
  }
}
