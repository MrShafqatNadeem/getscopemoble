import 'package:flutter/material.dart';

import '../CommonWidgets/custom_appbar.dart';
import '../CommonWidgets/custom_button.dart';
import '../CommonWidgets/labled_text_field_widget.dart';
import '../Constants/app_strings.dart';
import '../Helpers/extensions.dart';

class CreateNewStoryEpicScreen extends StatefulWidget {
  const CreateNewStoryEpicScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewStoryEpicScreen> createState() =>
      _CreateNewStoryEpicScreenState();
}

class _CreateNewStoryEpicScreenState extends State<CreateNewStoryEpicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      child: Text(
                        AppStrings.getString("Create new story"),
                        style: CustomLableTextStyle(context)!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  LabledTextField(
                      //  controller: projectNameController,
                      lable: AppStrings.getString("Name your story"),
                      hint: AppStrings.getString("Name"),
                      onchange: (val) {}),
                  LabledTextField(
                      //  controller: projectNameController,
                      lable: AppStrings.getString(
                          "Add description for your story"),
                      hint: AppStrings.getString(
                          "Describe your acceptance criteria or your are D.O.D"),
                      onchange: (val) {}),
                  Row(
                    children: [
                      Container(
                          width: 180,
                          child: CustomButton(
                              text: AppStrings.getString("Create"),
                              onPressed: () {})),
                      Expanded(
                          child: InkWell(
                              onTap: () {},
                              child: Text(
                                AppStrings.getString("Cancel"),
                                textAlign: TextAlign.center,
                              ))),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
