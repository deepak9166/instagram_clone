import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_clone/screens/splash.dart';

import 'theme/light_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta clone',
      theme: ThemeCustom.lightTheme,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
