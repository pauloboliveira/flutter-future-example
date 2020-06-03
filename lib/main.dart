import 'package:flutter/material.dart';
import 'package:future_example/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  SplashScreen createState() => SplashScreen();
}

class SplashScreen extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  Future<void> delay() async {
    Future.delayed(
      Duration(
        seconds: 5,
      ),
      () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(pageBuilder: (
            BuildContext context,
            Animation animation,
            Animation secondaryAnimation,
          ) {
            return HomePage();
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Image.asset(
          "assets/images/logo_bank.png",
          height: 80,
          width: 80,
          color: Colors.white,
        ),
      ),
    );
  }
}
