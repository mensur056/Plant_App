import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({

    required this.size,
  }) ;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      height: size.height *0.3,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding+20),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Hi Uishopy!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
                Spacer(),
                Image.asset('assets/images/logo.png')
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 60,
            child: Container(
              alignment: Alignment.center,
              height: 55,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  FlatButton(
                      splashColor: Colors.teal,
                      highlightColor: Colors.white,
                      hoverColor: Colors.white,
                      onPressed: () {},
                      child: SvgPicture.asset('assets/icons/search.svg'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
