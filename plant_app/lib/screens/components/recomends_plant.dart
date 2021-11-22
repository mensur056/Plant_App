import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/details_screen.dart';
import '../../constants.dart';
class RecomendsPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FlatButton(
            splashColor: kBackgroundColor,
            hoverColor: kBackgroundColor,
            highlightColor: kBackgroundColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: RecomendPlantCard(
              image: 'assets/images/image_1.png',
              title: 'Samantha',
              press: () {},
              country: 'Russia',
              price: 400,
            ),
          ),
          FlatButton(
            hoverColor: kBackgroundColor,
            splashColor: kBackgroundColor,
            highlightColor: kBackgroundColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: RecomendPlantCard(
              image: 'assets/images/image_2.png',
              title: 'Angelica',
              press: () {},
              country: 'America',
              price: 520,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            highlightColor: kBackgroundColor,
            hoverColor: kBackgroundColor,
            splashColor: kBackgroundColor,
            child: RecomendPlantCard(
              image: 'assets/images/image_3.png',
              title: 'Colaraci',
              press: () {},
              country: 'Mexico',
              price: 640,
            ),
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard(
      {required this.country,
      required this.title,
      required this.image,
      required this.press,
      required this.price});

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              width: 160,
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: '$country',
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    ' \$$price',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kPrimaryColor,
                        ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
