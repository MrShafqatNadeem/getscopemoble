import 'package:flutter/material.dart';

import '../Models/projects_model.dart';

class ProjectsProvider extends ChangeNotifier {
  List<ProjectModel> projects = [];

  updateProjectsList({required List<ProjectModel> newProjects}) {
    projects = newProjects;
    notifyListeners();
  }

  addProjectIntoList({required ProjectModel newProjects}) {
    projects.add(newProjects);
    notifyListeners();
  }
}
