import 'package:comosum/home.dart';
import 'package:comosum/search.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    title: "Comosum",
    home: Home(),
    theme: _themeData(),
    routes: {
      "/home": (context) => new Home(),
      "/search": (context) => new Search(),
    },
  ));
}

ThemeData _themeData() {
  return ThemeData(
    primaryColor: Colors.teal,
    accentColor: Colors.teal[400],
  );
}
