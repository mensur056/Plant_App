import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/recomends_plant.dart';
import 'package:plant_app/screens/components/title_with_more_btn.dart';
import 'feature_plant.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(
            size: size,
          ),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturePlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

