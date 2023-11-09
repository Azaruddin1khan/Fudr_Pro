import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.03),
        width: double.infinity,
        // height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Log In',
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
            SizedBox(
              height: h * 0.04,
            ),
            Row(
              children: [
                Container(
                  width: w * 0.19,
                  height: h * 0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey.withOpacity(0.1)),
                  child: Center(
                      child: Text(
                    '+ 91',
                    style: TextStyle(fontSize: w * 0.04, color: Colors.black),
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(left: w * 0.03),
                  height: h * 0.06,
                  width: w * 0.66,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey.withOpacity(0.1)),
                  child: Center(
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: w * 0.04, bottom: h * 0.01),
                            hintText: 'Phone number',
                            hintStyle: TextStyle(
                                fontSize: w * 0.04,
                                color: Colors.grey.shade500),
                            border: InputBorder.none)),
                  ),
                )
              ],
            ),
            Text(
              'Please enter your registered phone number to Log In',
              style: TextStyle(
                  height: 2,
                  fontSize: w * 0.033,
                  color: Colors.black.withOpacity(0.5)),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: h * 0.034),
                height: h * 0.055,
                width: w * 0.96,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blueAccent.withOpacity(0.2)),
                child: Center(
                    child: Text(
                  'SEND OTP',
                  style: TextStyle(color: Colors.white, fontSize: w * 0.04),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
