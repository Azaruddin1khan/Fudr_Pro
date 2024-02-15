import 'package:flutter/material.dart';
import 'package:fudr_project/screen/home/about/about_fudr_screen.dart';
import 'package:fudr_project/screen/login_screen.dart';
import 'package:fudr_project/screen/home/scan.dart';
import 'package:fudr_project/screen/home/self_pickup_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
    );
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        width: w * 0.7,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: h * 0.1),
              child: Image.asset(
                'assets/fudr_logo.png',
                width: w * 0.55,
              ),
            ),
            SizedBox(
              height: h * 0.06,
            ),
            Divider(
              indent: 80,
              thickness: 1,
              color: Colors.black.withOpacity(0.3),
            ),
            Padding(
              padding: EdgeInsets.only(top: h * 0.03, left: w * 0.09),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: (context),
                      builder: (context) {
                        return Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: const LoginScreen());
                      },
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: w * 0.04),
                      height: h * 0.04,
                      width: w * 0.05,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 83, 132, 172),
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 83, 132, 172),
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Divider(
              indent: 80,
              thickness: 1,
              color: Colors.black.withOpacity(0.3),
            ),
            Padding(
              padding: EdgeInsets.only(top: h * 0.03, left: w * 0.08),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: w * 0.04),
                      child: const Icon(
                        Icons.info_outline,
                        color: Color.fromARGB(255, 83, 132, 172),
                        size: 25,
                      ),
                    ),
                    Text(
                      'About FUDR',
                      style: TextStyle(
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 83, 132, 172)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/fudr_logo.png',
            height: h * 0.18,
            width: w * 0.5,
          ),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: SizedBox(
              height: h * 0.05,
              child: TabBar(
                  controller: tabController,
                  labelColor: const Color.fromARGB(255, 83, 132, 172),
                  unselectedLabelColor: const Color.fromARGB(255, 83, 132, 172),
                  indicatorColor: const Color.fromARGB(255, 83, 132, 172),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: h * 0.045),
                  tabs: [
                    Tab(
                      child: Text('SCAN CODE',
                          style: TextStyle(
                            fontSize: w * 0.044,
                            fontFamily: 'Hind',
                          )),
                    ),
                    Tab(
                      child: Text('SELF PICKUP',
                          style: TextStyle(
                            fontSize: w * 0.044,
                            fontFamily: 'Hind',
                          )),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: w * 1.173,
              child: TabBarView(
                controller: tabController,
                children: [const ScanScreen(), const SelfPickupScreen()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
