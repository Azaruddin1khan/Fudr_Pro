import 'package:flutter/material.dart';

class TellUsBottomSheet extends StatefulWidget {
  const TellUsBottomSheet({super.key});

  @override
  State<TellUsBottomSheet> createState() => _TellUsBottomSheetState();
}

class _TellUsBottomSheetState extends State<TellUsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Tell us ',
                style:
                    TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold),
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
            height: h * 0.08,
          ),
          SizedBox(
              width: w * 0.75,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text:
                        'Tell us the restaurant you want to see on FUDR. Write us at',
                    style: TextStyle(color: Colors.black, fontSize: w * 0.04),
                    children: [
                      TextSpan(
                        text: ' admin@fudr.in ',
                        style:
                            TextStyle(color: Colors.blue, fontSize: w * 0.04),
                      ),
                      TextSpan(
                        text: 'and we’ll try to get them onboard.',
                        style:
                            TextStyle(color: Colors.black, fontSize: w * 0.04),
                      )
                    ]),
              ))
        ],
      ),
    );
  }
}
