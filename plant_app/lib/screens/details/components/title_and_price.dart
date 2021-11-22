import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  final String country, title;
  final int price;

  const TitleAndPrice(
      {required this.country, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '$title\n',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: country,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 20,
                        color: kPrimaryColor))
              ],
            ),
          ),
          Spacer(),
          Text('\$$price',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: kPrimaryColor))
        ],
      ),
    );
  }
}
