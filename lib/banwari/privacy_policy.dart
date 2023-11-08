import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 240, 241),
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 25, left: 15, right: 10),
          child: Column(
            children: [
              Text(
                  'This Privacy Policy (“Policy”) describes the policies and procedures on the collection, use, disclosure and protection of your information when you use our website located at fudr.in (“Fudr Platform”) made available by December Technologies Private Limited (“Fudr”, “Company”, “we”, “us” and “our”), a private company established under the laws of India having its registered office at 189, Vivek Vihar, New Sanganer Road, Sodala, Jaipur - 302019.'),
              SizedBox(
                height: 15,
              ),
              Text(
                  'The terms “you” and “your” refer to the user of the Fudr Platform. The term “Services” refers to any services offered by Fudr whether on the Fudr Platform or otherwise.'),
              SizedBox(
                height: 15,
              ),
              Text(
                  'Please read this Policy before using the Fudr Platform or submitting any personal information to Fudr. This Policy is a part of and incorporated within, and is to be read along with, the Terms of Use.'),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'YOUR CONSENT',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'By using the Fudr Platform and the Services, you agree and consent to the collection, transfer, use, storage, disclosure and sharing of your information as described and collected by us in accordance with this Policy. If you do not agree with the Policy, please do not use or access the Fudr Platform.'),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'LINKS TO OTHER WEBSITES',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'The Fudr Platform may contain links to other websites. Any personal information about you collected whilst visiting such websites is not governed by this Policy. Fudr shall not be responsible for and has no control over the practices and content of any website accessed using the links contained on the Fudr Platform. This Policy shall not apply to any information you may disclose to any of our service providers/service personnel which we do not require you to disclose to us or any of our service providers under this Policy.')
            ],
          ),
        ),
      ),
    );
  }
}
