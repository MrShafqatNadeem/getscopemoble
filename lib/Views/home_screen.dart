import 'package:flutter/material.dart';
import 'package:getscopemobile/CommonWidgets/custom_appbar.dart';
import 'package:getscopemobile/CommonWidgets/custom_button.dart';
import 'package:getscopemobile/Constants/app_strings.dart';
import 'package:getscopemobile/Constants/get_scope_colors.dart';
import 'package:getscopemobile/Constants/get_scope_images.dart';
import '../Helpers/extensions.dart';
import '../Helpers/navigators.dart';
import 'create_project_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          NoProjectWidget(),
        ],
      ),
    );
  }

  Widget NoProjectWidget() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(GetScopeImages.chill),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppStrings.getString("Start a new project"),
              style: CustomLableTextStyle(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppStrings.getString("Start a project"),
              style: CustomLableTextStyle(context)!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
          ),
          CustomButton(
              text: AppStrings.getString("Make a new project"),
              onPressed: () {
                CustomNavigator.goNextAndKeepHistory(
                    context: context, widget: CreateNewProjectScreen());
              }),
        ],
      ),
    );
  }
}
