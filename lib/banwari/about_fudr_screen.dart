import 'package:flutter/material.dart';
import 'package:fudr_project/banwari/privacy_policy.dart';
import 'package:fudr_project/banwari/terms_and_conditions.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    //double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xfffafafa),
        appBar: AppBar(
          title: const Text(
            'About FUDR',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 8),
                    child: Text(
                      'About Fudr',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 5),
                child: Text(
                    "December Technologies Pvt. Ltd. aims to use the power of computing to empower eatery owners in all round business activities, to help them focus more on the quality of food and hospitality. While enabling customers with any form of communication with the restaurants on their fingertips."),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 5),
                child: Text(
                    "Introducing Fudr, a web app that provides you with a seamless outing experience where ever you go. All you need are a few taps on your smartphone. Be it the eatery down the lane or your favorite coffee bar just scan the QR code on your table and the application takes you directly to the menu. Select and confirm your order and pay from the comfort of your chair through your cell phone. Worried who gets that cheque? Have our split feature assist you to just pay your bill without the need to download anything."),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13, right: 5),
                child: Row(
                  children: [
                    Text(
                      'To know more about Fudr, log on to ',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'business.fudr.in',
                      style: TextStyle(fontSize: 13, color: Color(0xff4183c4)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TermsAndConditions(),
                  ));
                },
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.chevron_right,
                      size: 29,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PrivacyPolicy(),
                  ));
                },
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.chevron_right,
                      size: 29,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Image.asset('assets/powered.png'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
