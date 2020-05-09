import 'package:flutter/material.dart';
import 'package:transporderapp/screen_navigation_value.dart';
import 'package:transporderapp/styles/appStyles.dart';
import 'package:transporderapp/transponderPage.dart';

void main() => runApp(
  new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: transponderScreen,
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: colorAccent,
        accentColorBrightness: Brightness.light,
      ),
      routes: {
        transponderScreen: (BuildContext context) => TransponderScreen(),
      }),
);
