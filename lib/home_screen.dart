import 'package:exercise/components/body.dart';
import 'package:exercise/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/1/body.dart';
import 'components/1/my_bottom_nav_bar.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),

      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  buildAppBar() {
    return AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            color: Colors.white,
            width: 30,
          ),
          onPressed: () {},
        ));
  }
}
