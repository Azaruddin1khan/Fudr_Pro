import 'package:flutter/material.dart';

class AboutOutlet extends StatefulWidget {
  const AboutOutlet({super.key});

  @override
  State<AboutOutlet> createState() => _AboutOutletState();
}

class _AboutOutletState extends State<AboutOutlet> {
  List<Map<String, dynamic>> OutletTimings = [
    {"Week": "Monday", "Day": "Closed"},
    {"Week": "Tuesday", "Day": "Closed"},
    {"Week": "Wednesday", "Day": "Closed"},
    {"Week": "Thursday", "Day": "Closed"},
    {"Week": "Friday", "Day": "Closed"},
    {"Week": "Saturday", "Day": "Closed"},
    {"Week": "Sunday", "Day": "Closed"},
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'About Outlet',
          style: TextStyle(fontSize: w * 0.05, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Outlet',
                  style: TextStyle(
                    fontSize: w * 0.07,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  'For any queries, please contact us on the following:',
                  style: TextStyle(
                    fontSize: w * 0.035,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  'Phone',
                  style: TextStyle(
                    fontSize: w * 0.04,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '8519069775, 8827774477',
                      style: TextStyle(
                        fontSize: w * 0.04,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call,
                          color: Color(0xff547aa8),
                        ))
                  ],
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: w * 0.04,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  'hello.anandmai@gmail.com',
                  style: TextStyle(
                    fontSize: w * 0.04,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  'Address',
                  style: TextStyle(
                    fontSize: w * 0.04,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: w * 0.78,
                      child: Text(
                        '9, Bhawani Singh Ln, C-Scheme, Lalkothi, Jaipur, Rajasthan 302005',
                        style: TextStyle(
                          fontSize: w * 0.04,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.location_on,
                        color: Color(0xff547aa8),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: h * 0.04, vertical: h * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Outlet Timings',
                  style: TextStyle(
                    height: 2,
                    fontSize: w * 0.07,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Text(
                  'Self Pick-up, Dine-In',
                  style: TextStyle(
                    fontSize: w * 0.04,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: OutletTimings.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Text(
                            OutletTimings[index]["Week"].toString(),
                            style: TextStyle(
                              height: 1.5,
                              fontSize: w * 0.04,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            OutletTimings[index]["Day"].toString(),
                            style: TextStyle(
                              fontSize: w * 0.04,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      );
                    })
              ],
            ),
          ),
          Divider(),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'powered by',
                  style: TextStyle(
                    fontSize: w * 0.04,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Image.asset(
                  'assets/side-fudr.png',
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
