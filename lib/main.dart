import 'package:flutter/material.dart';
import 'package:flutter_course_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course Demo ',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: const Color(0xff29384D),
          textTheme: TextTheme(titleMedium: TextStyle(fontSize: 14))),
      home: HomePage(),
    );
  }
}
