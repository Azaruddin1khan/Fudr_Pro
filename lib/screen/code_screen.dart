import 'package:flutter/material.dart';
import 'package:fudr_project/screen/home/home_Screen.dart';
import 'package:fudr_project/screen/scan_code_screen.dart';

class CodeScreens extends StatefulWidget {
  const CodeScreens({super.key});

  @override
  State<CodeScreens> createState() => _CodeScreensState();
}

class _CodeScreensState extends State<CodeScreens> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Home(),
                  ));
                },
                icon: const Icon(Icons.close)),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/code.png')),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Please enter the restaurant code\nmentioned below QR code',
            style: TextStyle(fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: h * 0.05,
            width: w * .69,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
                textAlign: TextAlign.center,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 8, bottom: 15),
                    hintText: 'Enter Restaurant Code',
                    hintStyle:
                        TextStyle(fontSize: 14, color: Colors.grey.shade500),
                    border: InputBorder.none)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, bottom: 30),
            height: h * 0.05,
            width: w * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 199, 214, 226)),
            child: const Center(
                child: Text(
              'PROCEED',
              style: TextStyle(color: Colors.white),
            )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ScanCodeScreen(),
              ));
            },
            child: const Text(
              'SCAN CODE',
              style: TextStyle(
                color: Color.fromARGB(255, 81, 167, 236),
              ),
            ),
          )
        ],
      ),
    );
  }
}
