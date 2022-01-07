import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/screens/details/components/body.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B))
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(style: TextStyle(color: kTextColor), children: [
              TextSpan(text: 'Size\n'),
              TextSpan(
                  text: '${product.size} cm',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold))
            ]),
          ),
        )
      ],
    );
  }
}
