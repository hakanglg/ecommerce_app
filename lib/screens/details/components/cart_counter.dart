import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(Icons.remove, () {
          setState(() {
            if (numOfItems > 1) {
              numOfItems--;
            }
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        buildOutlinedButton(Icons.add, () {
          setState(() {
            numOfItems++;
          });
        }),
      ],
    );
  }

  SizedBox buildOutlinedButton(IconData icon, Function press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        ),
        onPressed: () {
          setState(() {
            press();
          });
        },
        child: Icon(icon),
      ),
    );
  }
}
