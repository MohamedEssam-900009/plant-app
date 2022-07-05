import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/feautured_plants.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

