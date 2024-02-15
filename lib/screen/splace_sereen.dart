import 'package:flutter/material.dart';
import 'package:fudr_project/screen/anandmaiscreen.dart';

class Splashfudr extends StatefulWidget {
  const Splashfudr({super.key});

  @override
  State<Splashfudr> createState() => _SplashfudrState();
}

class _SplashfudrState extends State<Splashfudr> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Anandmaiscreen()));
    });
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/fudrsplash.png",
                ),
                fit: BoxFit.cover)),
        height: h * 1,
        width: w * 1,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Good Evening",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Welcome to",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Text(
              "Anandmai",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
