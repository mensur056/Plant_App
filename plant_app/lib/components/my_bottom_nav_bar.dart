import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
class MyBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kDefaultPadding/2,
          left: kDefaultPadding*2,
          bottom: kDefaultPadding/2,
          right: kDefaultPadding*2),
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 36,
            color: kPrimaryColor.withOpacity(0.38)),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/flower.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/user-icon.svg'))
        ],
      ),
    );
  }
}