import 'package:flutter/material.dart';

class ViewCart extends StatefulWidget {
  const ViewCart({super.key});

  @override
  State<ViewCart> createState() => _ViewCartState();
}

class _ViewCartState extends State<ViewCart> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Text(
            'Your Order',
            style: TextStyle(fontSize: w * 0.05),
          )
        ],
      ),
    );
  }
}
