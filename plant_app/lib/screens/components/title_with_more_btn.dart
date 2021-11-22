import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({required this.title, required this.press});

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnder(
            text: title,
          ),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              onPressed: press,
              child: Text(
                'More',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class TitleWithCustomUnder extends StatelessWidget {
  const TitleWithCustomUnder({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 20,
            right: 0,
            bottom: 0,
            child: Container(
              color: kPrimaryColor,
              height: 1,
              margin: EdgeInsets.only(right: kDefaultPadding),
            ),
          )
        ],
      ),
    );
  }
}
