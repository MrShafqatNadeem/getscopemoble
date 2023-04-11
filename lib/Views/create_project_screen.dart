import 'package:flutter/material.dart';
import 'package:getscopemobile/CommonWidgets/custom_button.dart';
import 'package:getscopemobile/CommonWidgets/labled_text_field_widget.dart';
import 'package:getscopemobile/Constants/app_strings.dart';
import 'package:getscopemobile/Helpers/extensions.dart';
import 'package:getscopemobile/Models/projects_model.dart';
import 'package:provider/provider.dart';

import '../CommonWidgets/custom_appbar.dart';
import '../CommonWidgets/custom_item_selector.dart';
import '../Providers/projects_provider.dart';

class CreateNewProjectScreen extends StatefulWidget {
  const CreateNewProjectScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewProjectScreen> createState() => _CreateNewProjectScreenState();
}

class _CreateNewProjectScreenState extends State<CreateNewProjectScreen> {
  String selected = "";
  TextEditingController projectNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      AppStrings.getString("Create new project"),
                      style: CustomLableTextStyle(context)!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                LabledTextField(
                    controller: projectNameController,
                    lable:
                        AppStrings.getString("What\'s name of your project?"),
                    hint: AppStrings.getString("Name your project?"),
                    onchange: (val) {}),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.getString('Choose your method'),
                    style: CustomSmallTextTextStyle(context),
                  ),
                ),
                CustomItemSelector((_selected) {
                  selected = _selected;
                }),
                Row(
                  children: [
                    Container(
                        width: 180,
                        child: CustomButton(
                            text: AppStrings.getString("Create"),
                            onPressed: () {
                              // if (projectNameController.text.isNotEmpty && selected.isNotEmpty) {
                              //   Provider.of<ProjectsProvider>(context)
                              //       .addProjectIntoList(newProjects: ProjectModel(projectName: projectNameController.text, projectMethod: selected));
                              // } else {
                              //
                              // }
                            })),
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
          ))
        ],
      ),
    );
  }
}
