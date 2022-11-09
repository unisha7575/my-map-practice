import 'package:flutter/material.dart';

import 'mainScreen.dart';
void main()=>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home:MainScreen(
      ),

    )
);