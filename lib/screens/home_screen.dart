import 'package:ecommerce_app/components/body.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: kTextColor,
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: kTextColor,
            )),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
