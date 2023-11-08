import 'package:flutter/material.dart';
import 'package:fudr_project/banwari/scan_code_screen.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: h * 0.04,
          ),
          Center(
            child: Container(
              height: h * 0.43,
              width: w * 0.9,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/scanimage.png'),
                      fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            height: h * 0.05,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ScanCodeScreen(),
              ));
            },
            child: Container(
              height: h * 0.07,
              width: w * 0.42,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 83, 132, 172),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                'SCAN',
                style: TextStyle(color: Colors.white, fontSize: w * 0.04),
              )),
            ),
          )
        ],
      ),
    );
  }
}
