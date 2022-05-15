import 'package:awesomeapp/pages/homePage.dart';
import 'package:awesomeapp/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter App",
    home: const LoginPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "/login": (context) => LoginPage(),
      "/Home": (context) => HomePage()
    },
  ));
}
