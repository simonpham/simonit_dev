import 'package:flutter/material.dart';
import 'package:simonit_dev/views/pages/main_page.dart';

void main() => runApp(Simon());

class Simon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'Simon Pham',
      theme: ThemeData(
        fontFamily: "Iosevka",
        primaryColor: Colors.black,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
