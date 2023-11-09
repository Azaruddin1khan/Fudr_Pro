// import 'package:flutter/material.dart';

// import 'banwari/view_cart.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   List<CartItem> cart = [];

//   void addToCart(CartItem item) {
//     final existingItemIndex =
//         cart.indexWhere((element) => element.name == item.name);

//     if (existingItemIndex != -1) {
//       setState(() {
//         cart[existingItemIndex].quantity++;
//       });
//     } else {
//       setState(() {
//         cart.add(item);
//       });
//     }
//   }

//   void removeFromCart(CartItem item) {
//     setState(() {
//       if (item.quantity > 1) {
//         item.quantity--;
//       } else {
//         cart.remove(item);
//       }
//     });
//   }

//   double calculateTotal() {
//     double total = 0.0;
//     for (var item in cart) {
//       total += item.price * item.quantity;
//     }
//     return total;
//   }

//   List<Map<String, dynamic>> AllDayMealMenu = [
//     {
//       "title": "Thali of the Day (Minimum order of 2 Thali)",
//       "subtitle": 200,
//       "text":
//           "Indulge in our Home Thali - a delightful ensemble featuring fragrant rice, tangy curd, crispy papad, soft chapati, accompanie...",
//       'counter': 0,
//     },
//     {
//       "title": "Vegetable Khichadi Bowl",
//       "subtitle": 400,
//       "text":
//           "Vegetable Khichadi: A harmonious blend of fragrant basmati rice and lentils, cooked to perfection with a medley of seasonal vegetables. Infused with aromatic spices, th",
//       'counter': 0,
//     },
//     {
//       "title": "Pav Bhaji (Preparation Time: 1.30 Hrs)",
//       "subtitle": 150,
//       "text":
//           "A medley of fresh vegetables simmered to perfection in aromatic spices, served with soft buttery pav buns. Our Pav Bhaji is a mouthwatering symphony of taste and texture that will tra...",
//       'counter': 0,
//     },
//     {
//       "title": "Special Matar Kulcha (Preparation Time: 30Mins)",
//       "subtitle": 99,
//       "text":
//           "A flavorful blend of tender green peas (matar) and aromatic spices, sautéed to perfection and served in a rich tomato-based...",
//       'counter': 0,
//     },
//     {
//       "title": "Vegetable Cheese Maggie",
//       "subtitle": 115,
//       "text":
//           "We believe in the power of nutrition, and our Vegetable Maggi is no exception. Packed with a colorful array of vegetables, includi...",
//       'counter': 0,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//         bottomNavigationBar: Visibility(
//           visible: AllDayMealMenu.any((element) => element["counter"] != 0),
//           child: Container(
//             height: h * 0.09,
//             color: const Color(0xff547aa8),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   const Text(
//                     '1 item(s) | ₹ 245',
//                     style: TextStyle(fontSize: 18, color: Colors.white),
//                   ),
//                   Text(
//                     " + ${"taxes"}",
//                     style: TextStyle(
//                         wordSpacing: w * 0.02,
//                         fontSize: 16,
//                         color: Colors.white),
//                   ),
//                   const Spacer(),
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: ((context) => const ViewCart())));
//                     },
//                     child: const Text(
//                       'VIEW CART',
//                       style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         appBar: AppBar(title: const Text('Shopping Cart')),
//         body: SingleChildScrollView(
//           child: Column(children: [
//             Text(
//               "All Day Meal Menu",
//               style:
//                   TextStyle(fontSize: w * 0.055, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: h * 0.02,
//             ),
//             ListView.builder(
//               itemCount: AllDayMealMenu.length,
//               physics: const ScrollPhysics(),
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.only(top: 5),
//                             decoration: BoxDecoration(
//                                 border: Border.all(
//                                     color: Colors.lightGreen, width: 1)),
//                             height: h * 0.02,
//                             width: w * 0.04,
//                             child: const CircleAvatar(
//                               backgroundColor: Colors.lightGreen,
//                               radius: 1,
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: w * 0.05),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                     width: w * 0.5,
//                                     child: Text(
//                                       AllDayMealMenu[index]["title"].toString(),
//                                       style: TextStyle(
//                                           fontSize: w * 0.045,
//                                           fontWeight: FontWeight.w600,
//                                           color: Colors.black),
//                                     )),
//                                 SizedBox(
//                                     width: w * 0.5,
//                                     child: Text(
//                                       "₹ ${AllDayMealMenu[index]["subtitle"]}"
//                                           .toString(),
//                                       style: TextStyle(fontSize: w * 0.04),
//                                     )),
//                               ],
//                             ),
//                           ),
//                           const Spacer(),
//                           AllDayMealMenu[index]['counter'] == 0
//                               ? InkWell(
//                                   onTap: () {
//                                     AllDayMealMenu[index]["counter"] = 1;
//                                     //         ['isAdVisible'] =
//                                     //     !(AllDayBreakfastMenu[index]
//                                     //         ['isAdVisible']);
//                                     // print(AllDayBreakfastMenu[index]
//                                     //     ['isAdVisible']);
//                                     setState(() {});
//                                   },
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: Colors.blue),
//                                         borderRadius: BorderRadius.circular(5)),
//                                     height: h * 0.051,
//                                     width: w * 0.19,
//                                     child: Center(
//                                         child: Text(
//                                       "ADD",
//                                       style: TextStyle(
//                                           fontSize: w * 0.04,
//                                           color: Colors.blue),
//                                     )),
//                                   ),
//                                 )
//                               : Container(
//                                   constraints: BoxConstraints(
//                                       minWidth: w * 0.2,
//                                       maxWidth: w * 0.25,
//                                       minHeight: h * 0.06,
//                                       maxHeight: h * 0.07),
//                                   decoration: BoxDecoration(
//                                       color: Colors.blue,
//                                       border: Border.all(color: Colors.blue),
//                                       borderRadius: BorderRadius.circular(41)),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       GestureDetector(
//                                           onTap: () {
//                                             setState(() {});
//                                             AllDayMealMenu[index]['counter']++;
//                                           },
//                                           // _incrementCounter(index),
//                                           // padding: EdgeInsets.zero,
//                                           child: const Icon(
//                                             Icons.add,
//                                             color: Colors.white,
//                                             size: 20,
//                                           )),
//                                       Text(
//                                         "${AllDayMealMenu[index]['counter']}",
//                                         style: TextStyle(
//                                             fontSize: w * 0.04,
//                                             color: Colors.white),
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                       GestureDetector(
//                                           onTap: () {
//                                             setState(() {});

//                                             if (AllDayMealMenu[index]
//                                                     ['counter'] >
//                                                 0) {
//                                               AllDayMealMenu[index]
//                                                   ['counter']--;

//                                               AllDayMealMenu[index]
//                                                       ['isAddVisible'] =
//                                                   !AllDayMealMenu[index]
//                                                       ['isAddVisible'];
//                                             }
//                                           },
//                                           // padding: EdgeInsets.zero,
//                                           child: const Icon(
//                                             Icons.remove,
//                                             color: Colors.white,
//                                             size: 20,
//                                           ))
//                                     ],
//                                   ),
//                                 ),
//                         ]),
//                     Padding(
//                       padding: EdgeInsets.only(left: w * 0.08),
//                       child: Text(
//                         AllDayMealMenu[index]["text"].toString(),
//                         style: TextStyle(fontSize: w * 0.035),
//                       ),
//                     )
//                   ],
//                 );
//               },
//             ),
//           ]),
//         ));
//   }
// }

// class CartItem {
//   final String name;
//   final double price;
//   int quantity;

//   CartItem(this.name, this.price, this.quantity);
// }
