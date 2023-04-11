import 'package:flutter/material.dart';
import 'package:getscopemobile/CommonWidgets/custom_appbar.dart';

import '../CommonWidgets/custom_button.dart';
import '../CommonWidgets/labled_text_field_widget.dart';
import '../Constants/app_strings.dart';
import '../Helpers/extensions.dart';

class CreateNewSprint extends StatefulWidget {
  const CreateNewSprint({Key? key}) : super(key: key);

  @override
  State<CreateNewSprint> createState() => _CreateNewSprintState();
}

class _CreateNewSprintState extends State<CreateNewSprint> {
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
                        AppStrings.getString("Create new sprint"),
                        style: CustomLableTextStyle(context)!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  LabledTextField(
                      //  controller: projectNameController,
                      lable:
                          AppStrings.getString("What\'s name of your sprint?"),
                      hint: AppStrings.getString("Name your sprint?"),
                      onchange: (val) {}),
                  Row(
                    children: [
                      Container(
                        // height: 100,
                        width: 180,
                        child: LabledTextField(
                            //  controller: projectNameController,
                            lable: AppStrings.getString("Start"),
                            hint: AppStrings.getString("DD-MM-YYYY"),
                            onchange: (val) {}),
                      ),
                      Spacer(),
                      Container(
                        // height: 120,
                        width: 180,
                        child: LabledTextField(
                            //  controller: projectNameController,
                            lable: AppStrings.getString("End"),
                            hint: AppStrings.getString("DD-MM-YYYY"),
                            onchange: (val) {}),
                      ),
                    ],
                  ),
                  LabledTextField(
                      //  controller: projectNameController,
                      lable: AppStrings.getString(
                          "Add description for your sprint"),
                      hint: AppStrings.getString("Description"),
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
