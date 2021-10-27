import 'package:flutter/material.dart';

import '../../constans.dart';

class FaezehAghajani extends StatelessWidget {
  const FaezehAghajani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 9),
      child: Row(
        children: [
          FaezehAghajaniCard(
            image: "assets/images/bottom_img_1.png",
            onPressed: () {},
          ),
          FaezehAghajaniCard(
            image: "assets/images/bottom_img_2.png",
            onPressed: () {},
          ),
          FaezehAghajaniCard(
            image: "assets/images/bottom_img_1.png",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}


class FaezehAghajaniCard extends StatelessWidget {
  const FaezehAghajaniCard({Key? key, required this.image, required this.onPressed})
      : super(key: key);

  final String image;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
          left: kDefultPadding,
          top: kDefultPadding / 2,
          bottom: kDefultPadding / 2),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
