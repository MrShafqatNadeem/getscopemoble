import 'package:flutter/material.dart';
import 'Constants/get_scope_colors.dart';
import 'Views/create_new_epic.dart';
import 'Views/create_new_sprint_screen.dart';
import 'Views/create_new_story_screen.dart';
import 'Views/create_new_task_screen.dart';
import 'Views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetScope',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Casper_R'),
          displaySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: GetScopeColors.normalTextColor,
              fontFamily: 'Casper_R'),
          displayLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: GetScopeColors.normalTextColor,
              fontFamily: 'Casper_R'),
          displayMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Casper_R'),
        ),
        fontFamily: 'Casper_R',
      ),

      // home: LoginScreen(),
      // home: ForgetPasswordScreen(),
      // home: RegistrationScreen(),
      // home: CustomAppBar(),
      // home: HomeScreen(),
      // home: CreateNewSprint(),
      // home: CreateNewTaskScreen(),
      // home: CreateNewStoryEpicScreen(),
      home: CreateNewEpicScreen(),
    );
  }
}
