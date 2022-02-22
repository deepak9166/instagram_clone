import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    ///Go homepage after 3 second
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DashBoard(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "From",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              Image.asset(
                "assets/images/meta.png",
                height: 80,
                width: 80,
              ),
            ],
          )),
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          height: 65,
          width: 65,
        ),
      ),
    );
  }
}
