import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'bcoin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (content) => const BCOIN())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/P1a.png', scale: 1),
            const SizedBox(height: 40),
            SizedBox(
              width: 250.0,
              child: TextLiquidFill(
                text: 'LOADING',
                waveColor: Colors.blue,
                boxBackgroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 50.0,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 28, 19, 189),
    );
  }
}
