import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/details_screen.dart';
import '../../constants.dart';
class FeaturePlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FlatButton(
            hoverColor: kBackgroundColor,
            splashColor: kBackgroundColor,

            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: FeaturePlantCard(
              image: 'assets/images/bottom_img_1.png',
              press: () {},
            ),
          ),
          FlatButton(

            hoverColor: kBackgroundColor,
            splashColor: kBackgroundColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: FeaturePlantCard(
              image: 'assets/images/bottom_img_2.png',
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  final VoidCallback press;
  final String image;

  const FeaturePlantCard({required this.press, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        height: 185,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
