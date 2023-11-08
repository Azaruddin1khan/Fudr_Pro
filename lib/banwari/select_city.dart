import 'package:flutter/material.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({super.key});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const Text(
                  "Select City",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: h * 0.012),
            height: h * 0.05,
            width: w * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade200),
            child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 8, bottom: 10),
                    hintText: 'Search restaureants',
                    hintStyle:
                        TextStyle(fontSize: 14, color: Colors.grey.shade500),
                    border: InputBorder.none)),
          ),
        ],
      ),
    );
  }
}
