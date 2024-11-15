
import 'package:flutter/material.dart';

class AppTheme{
  ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w500,
      )
    )
  );

  ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 25,
      )
    )
  );

}