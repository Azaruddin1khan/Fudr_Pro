import 'package:flutter/material.dart';
import 'package:fudr_project/banwari/login_screen.dart';

import 'about_outlet.dart';
import 'switchmodel.dart';

class HomeDrower extends StatefulWidget {
  const HomeDrower({super.key});

  @override
  State<HomeDrower> createState() => _HomeDrowerState();
}

class _HomeDrowerState extends State<HomeDrower> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Drawer(
        child: Padding(
            padding: EdgeInsets.only(top: h * 0.06),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      image: const DecorationImage(
                          image: AssetImage("assets/anandmai.png"),
                          fit: BoxFit.fill)),
                  height: h * 0.2,
                  width: w * 0.65,
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.02),
                  child: Text(
                    "Anandmai",
                    style: TextStyle(
                        fontSize: w * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.03),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: w * 0.06),
                          child: const Icon(
                            Icons.restaurant,
                            color: Color.fromARGB(255, 2, 86, 155),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: w * 0.075),
                          child: Text(
                            "Menu",
                            style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 2, 86, 155)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: h * 0.04),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: (context),
                        builder: (context) {
                          return const SwitchModel();
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      );
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: w * 0.06),
                          child: const Icon(
                            Icons.sync,
                            color: Color.fromARGB(255, 2, 86, 155),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: w * 0.07),
                          child: Text(
                            "Switch",
                            style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 2, 86, 155)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: h * 0.06,
                  indent: w * 0.2,
                  thickness: w * 0.002,
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      isScrollControlled: true,
                      context: (context),
                      builder: (context) {
                        return const LoginScreen();
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.06),
                        child: const Icon(
                          Icons.login,
                          color: Color.fromARGB(255, 2, 86, 155),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.07),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: w * 0.04,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 2, 86, 155)),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: h * 0.06,
                  indent: w * 0.2,
                  thickness: w * 0.002,
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const AboutOutlet();
                      },
                    ));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.06),
                        child: const Icon(
                          Icons.info_outline,
                          color: Color.fromARGB(255, 2, 86, 155),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.07),
                        child: Text(
                          "About Outlet",
                          style: TextStyle(
                              fontSize: w * 0.04,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 2, 86, 155)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
