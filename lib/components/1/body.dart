import 'package:exercise/components/1/title_with_more.dart';
import 'package:exercise/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '1/Recomend_plants.dart';
import '1/featurred_plants.dart';
import 'Recomend_plants.dart';
import 'featurred_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Aghajani", onPressed: () {}),
          RecamendsPlants(),
          TitleWithMoreBtn(title: "Faezeh Aghajani", onPressed: () {}),
          FaezehAghajani(),
          SizedBox(height: kDefultPadding),
          

        ],
      ),
    );
  }
}
