import 'package:flutter/material.dart';
import 'package:fudr_project/banwari/anandmaimenu%20(1).dart';

class Anandmaiscreen extends StatefulWidget {
  const Anandmaiscreen({super.key});

  @override
  State<Anandmaiscreen> createState() => _AnandmaiscreenState();
}

class _AnandmaiscreenState extends State<Anandmaiscreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: Colors.transparent),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/anandmai.png",
                      ),
                      fit: BoxFit.fill)),
              height: h * 0.26,
              width: w * 0.85,
            ),
            Padding(
              padding: EdgeInsets.only(top: h * 0.05),
              child: Text(
                "Anandmai",
                style: TextStyle(
                    fontSize: w * 0.05,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: w * 0.04),
              child: Text(
                "9, Bhawani Singh Ln, C-Scheme, Lalkothi, Jaipur, Rajasthan 302005",
                style: TextStyle(
                  fontSize: w * 0.04,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "8:00 am - 9:00 pm",
              style: TextStyle(
                  height: 5,
                  fontWeight: FontWeight.w500,
                  fontSize: w * 0.035,
                  color: Colors.black54),
            ),
            Text(
              "Self Pickup",
              style: TextStyle(
                  height: 2.5,
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.06,
                  color: Colors.black54),
            ),
            MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuAnandmai()));
              },
              height: h * 0.06,
              minWidth: w * 0.4,
              color: const Color(0xff547aa8),
              child: Text(
                "VIEW MENU",
                style: TextStyle(fontSize: w * 0.044, color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
