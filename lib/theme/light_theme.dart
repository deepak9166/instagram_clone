import 'package:flutter/material.dart';

class ThemeCustom {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedItemColor: Colors.black12,
          unselectedIconTheme: IconThemeData(color: Colors.black),
          selectedItemColor: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black));
}
