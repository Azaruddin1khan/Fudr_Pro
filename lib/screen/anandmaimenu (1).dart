import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fudr_project/screen/drawer.dart';

import 'package:fudr_project/screen/switchmodel.dart';

import 'view_cart.dart';

class MenuAnandmai extends StatefulWidget {
  const MenuAnandmai({super.key});

  @override
  State<MenuAnandmai> createState() => _MenuAnandmaiState();
}

class _MenuAnandmaiState extends State<MenuAnandmai> {
  List<Map<String, dynamic>> Recommanded = [
    {
      "title": "Filter Coffee",
      "subtitle": 60,
      "text": "",
      'counter': 0,
    },
    {
      "title": "Masala Chai",
      "subtitle": 30,
      "text": "",
      'counter': 0,
    },
    {
      "title": "2 vegetable cutlets with 2 slices buttered bread",
      "subtitle": 179,
      "text":
          "Our signature bread cutlet features a golden-brown, crispy exterior that gives way to a tender and flavorful center. Crafted...",
      'counter': 0,
    },
    {
      "title": "Cheesy Aloo Sandwich",
      "subtitle": 129,
      "text":
          "Cheesy Aloo Sandwich: Our delectable Cheesy Aloo Sandwich is a mouthwatering delight that combines the richness of potatoes...",
      'counter': 0,
    },
    {
      "title": "1 Aloo Parantha with curd",
      "subtitle": 99,
      "text":
          "Our Aloo Paratha is a true labor of love, crafted with utmost care and expertise. A golden-brown, flaky exterior gives way to a sumptuous filling of spiced mashed potatoes, meticulously...",
      'counter': 0,
    },
    {
      "title": "Paneer Cheela 2 Piece",
      "subtitle": 140,
      "text":
          "Indulge in a delightful culinary journey with our exquisite Paneer Cheela, a fusion of traditional flavors and contemporary...",
      'counter': 0,
    },
  ];
  List<Map<String, dynamic>> BeverageMenu = [
    {
      "title": "Turmeric Milk Latte with a dash of Cinnamon",
      "subtitle": 79,
      "text": "100 ml",
      'counter': 0,
    },
    {
      "title": "Cold Coffee",
      "subtitle": 279,
      "text": "300 ml",
      'counter': 0,
    },
    {
      "title": "Green Tea",
      "subtitle": 729,
      "text": "100 ml",
      'counter': 0,
    },
    {
      "title": "Lemonade",
      "subtitle": 379,
      "text": "250 ml",
      'counter': 0,
    },
    {
      "title": "Lemon Iced Tea",
      "subtitle": 792,
      "text": "200 ml",
      'counter': 0,
    },
  ];
  List<Map<dynamic, dynamic>> allDayBreakfastMenu = [
    {
      "title": "2 vegetable cutlets with 2 slices buttered bread",
      "subtitle": 345,
      "text":
          "Our signature bread cutlet features a golden-brown, crispy exterior that gives way to a tender and flavorful center. Crafted...",
      'counter': 0,
    },
    {
      "title": "Cheesy Aloo Sandwich",
      "subtitle": 345,
      "text":
          "Cheesy Aloo Sandwich: Our delectable Cheesy Aloo Sandwich is a mouthwatering delight that combines the richness of potatoes...",
      'counter': 0,
    },
    {
      "title": "Classic cheese sandwich",
      "subtitle": 345,
      "text":
          "Indulge in the ultimate comfort with our Savory Cheese Meltdown—a timeless classic reimagined for your taste buds' delight. Crafted with care and creativity, this delectable...",
      'counter': 0,
    },
    {
      "title": "1 Aloo Parantha with curd",
      "subtitle": 345,
      "text":
          "Our Aloo Paratha is a true labor of love, crafted with utmost care and expertise. A golden-brown, flaky exterior gives way to a sumptuous filling of spiced mashed potatoes, meticulously...",
      'counter': 0,
    },
    {
      "title": "Mushroom caramelised onion cream Sandwich",
      "subtitle": 345,
      "text":
          "Indulge in the rich and savory delight of our Mushroom and Caramelized Onion Cream Sandwich, a culinary masterpiece that",
      'counter': 0,
    },
  ];
  List<Map<String, dynamic>> AllDayMealMenu = [
    {
      "title": "Thali of the Day (Minimum order of 2 Thali)",
      "subtitle": 200,
      "text":
          "Indulge in our Home Thali - a delightful ensemble featuring fragrant rice, tangy curd, crispy papad, soft chapati, accompanie...",
      'counter': 0,
    },
    {
      "title": "Vegetable Khichadi Bowl",
      "subtitle": 400,
      "text":
          "Vegetable Khichadi: A harmonious blend of fragrant basmati rice and lentils, cooked to perfection with a medley of seasonal vegetables. Infused with aromatic spices, th",
      'counter': 0,
    },
    {
      "title": "Pav Bhaji (Preparation Time: 1.30 Hrs)",
      "subtitle": 150,
      "text":
          "A medley of fresh vegetables simmered to perfection in aromatic spices, served with soft buttery pav buns. Our Pav Bhaji is a mouthwatering symphony of taste and texture that will tra...",
      'counter': 0,
    },
    {
      "title": "Special Matar Kulcha (Preparation Time: 30Mins)",
      "subtitle": 99,
      "text":
          "A flavorful blend of tender green peas (matar) and aromatic spices, sautéed to perfection and served in a rich tomato-based...",
      'counter': 0,
    },
    {
      "title": "Vegetable Cheese Maggie",
      "subtitle": 115,
      "text":
          "We believe in the power of nutrition, and our Vegetable Maggi is no exception. Packed with a colorful array of vegetables, includi...",
      'counter': 0,
    },
  ];
  // List<Widget> _strings = [];
  int simpleIntInput = 0;

  var totalValue = 0;
  int itemValue = 0;

  _incrementCounter(index) {}

  _decrementCounter(index) {}

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Visibility(
        visible: BeverageMenu.any((element) => element["counter"] != 0) ||
            allDayBreakfastMenu.any((element) => element["counter"] != 0) ||
            Recommanded.any((element) => element["counter"] != 0) ||
            AllDayMealMenu.any((element) => element["counter"] != 0),
        child: Container(
          height: h * 0.09,
          color: const Color(0xff547aa8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  '${itemValue.toString()} item(s) | ₹ ${totalValue.toString()}',
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  " + ${"taxes"}",
                  style: TextStyle(
                      wordSpacing: w * 0.02, fontSize: 16, color: Colors.white),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const ViewCart())));
                  },
                  child: const Text(
                    'VIEW CART',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: SizedBox(
        height: h * 0.05,
        width: w * 0.25,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff547aa8),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.024),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/spoon.png',
                  color: Colors.white,
                  height: h * 0.03,
                ),
                Text(
                  "MENU",
                  style: TextStyle(
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.044,
                      color: Colors.white),
                )
              ],
            ),
          ),
          onPressed: () => showDialog(
            context: (context),
            builder: (context) => AlertDialog(
              shape: const RoundedRectangleBorder(),
              title: Container(
                height: 400,
                width: w * 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommanded',
                          style: TextStyle(
                              fontSize: w * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        Text(
                          "8",
                          style: TextStyle(
                              fontSize: w * 0.05, color: Colors.black54),
                        )
                      ],
                    ),
                    const Divider(
                      height: 20,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beverage Menu',
                          style: TextStyle(
                              fontSize: w * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        Text(
                          "12",
                          style: TextStyle(
                              fontSize: w * 0.05, color: Colors.black54),
                        )
                      ],
                    ),
                    const Divider(
                      height: 20,
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Day Breakfast Menu',
                          style: TextStyle(
                              fontSize: w * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        Text(
                          "13",
                          style: TextStyle(
                              fontSize: w * 0.05, color: Colors.black54),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: w * 0.04, vertical: h * 0.01),
              height: h * 0.06,
              // width: w * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(0.1)),
              child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: w * 0.04, bottom: h * 0.01),
                      hintText: 'Search restaureants',
                      hintStyle:
                          TextStyle(fontSize: 14, color: Colors.grey.shade500),
                      border: InputBorder.none)),
            ),
            // ignore: prefer_const_constructors
            preferredSize: Size.fromHeight(40.0)),
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Anandmai",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                InkWell(
                  onTap: () {   
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
                  child: const Text(
                    "SWITCH",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff547aa8)),
                  ),
                ),
              ],
            ),
            const Text(
              "Self Pickup",
              style: TextStyle(fontSize: 14, color: Color(0xff757575)),
            ),
          ],
        ),
      ),
      drawer: const HomeDrower(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: h * 0.02,
            horizontal: w * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Recommended",
                  style: TextStyle(
                    fontSize: w * 0.050,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              ListView.builder(
                itemCount: Recommanded.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: h * 0.005),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.lightGreen,
                                      width: w * 0.0025)),
                              height: h * 0.02,
                              width: w * 0.04,
                              child: const CircleAvatar(
                                backgroundColor: Colors.lightGreen,
                                radius: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: w * 0.5,
                                      child: Text(
                                        Recommanded[index]["title"].toString(),
                                        style: TextStyle(
                                            fontSize: w * 0.045,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                  SizedBox(
                                      width: w * 0.5,
                                      child: Text(
                                        "₹ ${Recommanded[index]["subtitle"]}"
                                            .toString(),
                                        style: TextStyle(fontSize: w * 0.040),
                                      )),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Recommanded[index]['counter'] == 0
                                ? InkWell(
                                    onTap: () {
                                      Recommanded[index]['counter'] = 1;
                                      totalValue = totalValue +
                                          Recommanded[index]['subtitle'] as int;
                                      log(totalValue.toString());

                                      itemValue = itemValue + 1;
                                      setState(() {});
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: h * 0.051,
                                      width: w * 0.19,
                                      child: Center(
                                          child: Text(
                                        "ADD",
                                        style: TextStyle(
                                            fontSize: w * 0.04,
                                            color: Colors.blue),
                                      )),
                                    ),
                                  )
                                : Container(
                                    constraints: BoxConstraints(
                                        minWidth: w * 0.2,
                                        maxWidth: w * 0.25,
                                        minHeight: h * 0.06,
                                        maxHeight: h * 0.07),
                                    padding: EdgeInsets.zero,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.blue),
                                        borderRadius:
                                            BorderRadius.circular(41)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {});
                                              Recommanded[index]['counter']++;

                                              totalValue = totalValue +
                                                  Recommanded[index]
                                                      ['subtitle'] as int;
                                              log(totalValue.toString());
                                              itemValue = itemValue + 1;
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                        Text(
                                          "${Recommanded[index]['counter']}",
                                          style: TextStyle(
                                              fontSize: w * 0.04,
                                              color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (Recommanded[index]
                                                        ['counter'] >
                                                    0) {
                                                  Recommanded[index]
                                                      ['counter']--;
                                                  totalValue = totalValue -
                                                      Recommanded[index]
                                                          ["subtitle"] as int;
                                                  log(totalValue.toString());

                                                  itemValue = itemValue - 1;
                                                }
                                              });
                                            },
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 20,
                                            ))
                                      ],
                                    ),
                                  ),
                          ]),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.08),
                        child: Text(
                          Recommanded[index]["text"].toString(),
                          style: TextStyle(fontSize: w * 0.04),
                        ),
                      )
                    ],
                  );
                },
              ),
              const Divider(
                height: 50,
                thickness: 10,
              ),
              const Text(
                "Beverage Menu",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              ListView.builder(
                itemCount: BeverageMenu.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.lightGreen, width: 1)),
                              height: h * 0.02,
                              width: w * 0.04,
                              child: const CircleAvatar(
                                backgroundColor: Colors.lightGreen,
                                radius: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: w * 0.50,
                                      child: Text(
                                        BeverageMenu[index]["title"].toString(),
                                        style: TextStyle(
                                            fontSize: w * 0.045,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                  SizedBox(
                                      width: w * 0.40,
                                      child: Text(
                                        "₹ ${BeverageMenu[index]["subtitle"]}"
                                            .toString(),
                                        style: TextStyle(fontSize: w * 0.04),
                                      )),
                                ],
                              ),
                            ),
                            const Spacer(),
                            BeverageMenu[index]['counter'] == 0
                                ? InkWell(
                                    onTap: () {
                                      BeverageMenu[index]['counter'] = 1;
                                      totalValue = totalValue +
                                              BeverageMenu[index]['subtitle']
                                          as int;
                                      log(totalValue.toString());

                                      itemValue = itemValue + 1;

                                      setState(() {});
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: h * 0.051,
                                      width: w * 0.19,
                                      child: Center(
                                          child: Text(
                                        "ADD",
                                        style: TextStyle(
                                            fontSize: w * 0.04,
                                            color: Colors.blue),
                                      )),
                                    ),
                                  )
                                : Container(
                                    constraints: BoxConstraints(
                                        minWidth: w * 0.2,
                                        maxWidth: w * 0.25,
                                        minHeight: h * 0.06,
                                        maxHeight: h * 0.07),
                                    padding: EdgeInsets.zero,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.blue),
                                        borderRadius:
                                            BorderRadius.circular(41)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {});
                                              BeverageMenu[index]['counter']++;
                                              totalValue = totalValue +
                                                  BeverageMenu[index]
                                                      ['subtitle'] as int;
                                              log(totalValue.toString());
                                              itemValue = itemValue + 1;
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                        Text(
                                          "${BeverageMenu[index]['counter']}",
                                          style: TextStyle(
                                              fontSize: w * 0.04,
                                              color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {});

                                              if (BeverageMenu[index]
                                                      ['counter'] >
                                                  0) {
                                                BeverageMenu[index]
                                                    ['counter']--;
                                                totalValue = totalValue -
                                                    BeverageMenu[index]
                                                        ["subtitle"] as int;
                                                log(totalValue.toString());

                                                itemValue = itemValue - 1;
                                              }
                                            },
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 20,
                                            ))
                                      ],
                                    ),
                                  ),
                          ]),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.08),
                        child: Text(
                          BeverageMenu[index]["text"].toString(),
                          style: TextStyle(
                              fontSize: w * 0.035, color: Colors.black54),
                        ),
                      ),
                    ],
                  );
                },
              ),
              Divider(
                height: h * 0.05,
                thickness: w * 0.03,
              ),
              Text(
                "All Day Breakfast Menu",
                style:
                    TextStyle(fontSize: w * 0.055, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              ListView.builder(
                itemCount: allDayBreakfastMenu.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: h * 0.005),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.lightGreen,
                                      width: w * 0.0025)),
                              height: h * 0.02,
                              width: w * 0.04,
                              child: const CircleAvatar(
                                backgroundColor: Colors.lightGreen,
                                radius: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: w * 0.5,
                                      child: Text(
                                        allDayBreakfastMenu[index]["title"]
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: w * 0.045,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                  SizedBox(
                                      width: w * 0.5,
                                      child: Text(
                                        "₹ ${allDayBreakfastMenu[index]["subtitle"]}"
                                            .toString(),
                                        style: TextStyle(fontSize: w * 0.04),
                                      )),
                                ],
                              ),
                            ),
                            const Spacer(),
                            allDayBreakfastMenu[index]['counter'] == 0
                                ? InkWell(
                                    onTap: () {
                                      allDayBreakfastMenu[index]["counter"] = 1;
                                      totalValue = totalValue +
                                          allDayBreakfastMenu[index]
                                              ['subtitle'] as int;
                                      log(totalValue.toString());

                                      itemValue = itemValue + 1;

                                      setState(() {});
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: h * 0.051,
                                      width: w * 0.19,
                                      child: Center(
                                          child: Text(
                                        "ADD",
                                        style: TextStyle(
                                            fontSize: w * 0.04,
                                            color: Colors.blue),
                                      )),
                                    ),
                                  )
                                : Container(
                                    constraints: BoxConstraints(
                                        minWidth: w * 0.2,
                                        maxWidth: w * 0.25,
                                        minHeight: h * 0.06,
                                        maxHeight: h * 0.07),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.blue),
                                        borderRadius:
                                            BorderRadius.circular(41)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {});
                                              allDayBreakfastMenu[index]
                                                  ['counter']++;
                                              totalValue = totalValue +
                                                  allDayBreakfastMenu[index]
                                                      ['subtitle'] as int;
                                              log(totalValue.toString());
                                              itemValue = itemValue + 1;
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                        Text(
                                          "${allDayBreakfastMenu[index]['counter']}",
                                          style: TextStyle(
                                              fontSize: w * 0.04,
                                              color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {});

                                              if (allDayBreakfastMenu[index]
                                                      ['counter'] >
                                                  0) {
                                                allDayBreakfastMenu[index]
                                                    ['counter']--;
                                                totalValue = totalValue -
                                                    allDayBreakfastMenu[index]
                                                        ["subtitle"] as int;
                                                log(totalValue.toString());

                                                itemValue = itemValue - 1;
                                              }
                                            },
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 20,
                                            ))
                                      ],
                                    ),
                                  ),
                          ]),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.08),
                        child: Text(
                          allDayBreakfastMenu[index]["text"].toString(),
                          style: TextStyle(
                              fontSize: w * 0.035, color: Colors.black54),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const Divider(
                height: 50,
                thickness: 10,
              ),
              Text(
                "All Day Meal Menu",
                style:
                    TextStyle(fontSize: w * 0.055, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              ListView.builder(
                itemCount: AllDayMealMenu.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.lightGreen, width: 1)),
                              height: h * 0.02,
                              width: w * 0.04,
                              child: const CircleAvatar(
                                backgroundColor: Colors.lightGreen,
                                radius: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: w * 0.5,
                                      child: Text(
                                        AllDayMealMenu[index]["title"]
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: w * 0.045,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                  SizedBox(
                                      width: w * 0.5,
                                      child: Text(
                                        "₹ ${AllDayMealMenu[index]["subtitle"]}"
                                            .toString(),
                                        style: TextStyle(fontSize: w * 0.04),
                                      )),
                                ],
                              ),
                            ),
                            const Spacer(),
                            AllDayMealMenu[index]['counter'] == 0
                                ? InkWell(
                                    onTap: () {
                                      AllDayMealMenu[index]["counter"] = 1;
                                      totalValue = totalValue +
                                              AllDayMealMenu[index]['subtitle']
                                          as int;
                                      log(totalValue.toString());

                                      itemValue = itemValue + 1;

                                      setState(() {});
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: h * 0.051,
                                      width: w * 0.19,
                                      child: Center(
                                          child: Text(
                                        "ADD",
                                        style: TextStyle(
                                            fontSize: w * 0.04,
                                            color: Colors.blue),
                                      )),
                                    ),
                                  )
                                : Container(
                                    constraints: BoxConstraints(
                                        minWidth: w * 0.2,
                                        maxWidth: w * 0.25,
                                        minHeight: h * 0.06,
                                        maxHeight: h * 0.07),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.blue),
                                        borderRadius:
                                            BorderRadius.circular(41)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {});
                                              AllDayMealMenu[index]
                                                  ['counter']++;
                                              totalValue = totalValue +
                                                  AllDayMealMenu[index]
                                                      ['subtitle'] as int;
                                              log(totalValue.toString());
                                              itemValue = itemValue + 1;
                                            },
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                        Text(
                                          "${AllDayMealMenu[index]['counter']}",
                                          style: TextStyle(
                                              fontSize: w * 0.04,
                                              color: Colors.white),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {});

                                              if (AllDayMealMenu[index]
                                                      ['counter'] >
                                                  0) {
                                                AllDayMealMenu[index]
                                                    ['counter']--;
                                                totalValue = totalValue -
                                                    AllDayMealMenu[index]
                                                        ["subtitle"] as int;
                                                log(totalValue.toString());

                                                itemValue = itemValue - 1;
                                              }
                                            },
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 20,
                                            ))
                                      ],
                                    ),
                                  ),
                          ]),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.08),
                        child: Text(
                          AllDayMealMenu[index]["text"].toString(),
                          style: TextStyle(fontSize: w * 0.035),
                        ),
                      )
                    ],
                  );
                },
              ),
              const Divider(
                height: 50,
                thickness: 10,
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
        ),
      ),
    );
  }
}
