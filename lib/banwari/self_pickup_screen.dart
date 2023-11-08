import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fudr_project/banwari/select_city.dart';
import 'package:fudr_project/banwari/splace_sereen.dart';
import 'package:fudr_project/banwari/tell_us_bottomsheet.dart';

class SelfPickupScreen extends StatefulWidget {
  const SelfPickupScreen({super.key});

  @override
  State<SelfPickupScreen> createState() => _SelfPickupScreenState();
}

class _SelfPickupScreenState extends State<SelfPickupScreen> {
  List<Map<String, dynamic>> restaureants = [
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
    {
      "image": "assets/anandmai.png",
      "text": "Anandmai",
      "subtext": "9, Bhawani Singh Ln, C-Scheme, Lalkothi",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const SelectCity();
                        });
                  },
                  child: Row(
                    children: [
                      Text(
                        'Jaipur',
                        style: TextStyle(
                            fontSize: w * 0.045, fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: h * 0.012),
                height: h * 0.06,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey.shade200),
                child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: w * 0.05, bottom: w * 0.01),
                        hintText: 'Search restaureants',
                        hintStyle: TextStyle(
                            fontSize: w * 0.04, color: Colors.grey.shade500),
                        border: InputBorder.none)),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              ListView.builder(
                physics: const ScrollPhysics(),
                itemCount: restaureants.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: h * 0.01),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Splashfudr()));
                          },
                          child: Row(
                            children: [
                              Container(
                                height: h * 0.11,
                                width: w * 0.34,
                                decoration: BoxDecoration(
                                    // color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          restaureants[index]["image"],
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                width: w * 0.017,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: w * 0.54,
                                    child: Text(
                                      restaureants[index]["text"],
                                      style: TextStyle(
                                          fontSize: h * 0.023,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: w * 0.54,
                                    child: Text(
                                      restaureants[index]["subtext"],
                                      style: TextStyle(
                                          fontSize: h * 0.018,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      (index == 9)
                          ? const Divider(
                              thickness: 0,
                              color: Colors.transparent,
                            )
                          : const Divider(
                              thickness: 1,
                            )
                    ],
                  );
                },
              ),
              RichText(
                text: TextSpan(
                    text: 'Not able to find your Restaurant?',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: ' Tell us ',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                context: context,
                                builder: ((context) {
                                  return const TellUsBottomSheet();
                                }));
                          },
                        style: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      const TextSpan(
                        text: 'and we’ll try to get them onboard.',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
