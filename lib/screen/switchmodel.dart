import 'package:flutter/material.dart';
import 'package:fudr_project/screen/scan_code_screen.dart';

class SwitchModel extends StatefulWidget {
  const SwitchModel({super.key});

  @override
  State<SwitchModel> createState() => _SwitchModelState();
}

class _SwitchModelState extends State<SwitchModel> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.025),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      height: 200,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Order Mode',
                  style: TextStyle(
                      fontSize: w * 0.05, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ScanCodeScreen();
                    }));
                  },
                  child: const Text(
                    "Scan QR Code",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )),
            ),
            const Text(
              "Scan the QR code to place order",
              style: TextStyle(
                  height: 2.5,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
