import 'package:exercise/datails/datails.screen.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class RecamendsPlants extends StatelessWidget {
  const RecamendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            RecomandPlantCard(
              image: "assets/images/image_3.png",
              title: "Faezeh",
              country: "Aghajani",
              price: 850,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ));
              },
            ),
            RecomandPlantCard(
              image: "assets/images/image_2.png",
              title: "Faezeh",
              country: "Aghajani",
              price: 850,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ));
              },
            ),
            RecomandPlantCard(
              image: "assets/images/image_1.png",
              title: "Faezeh",
              country: "Aghajani",
              price: 850,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RecomandPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final void Function() onPressed;

  const RecomandPlantCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefultPadding,
          top: kDefultPadding / 2,
          bottom: kDefultPadding * 2.5,
        ),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                child: Image.asset(
                  image,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(kDefultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: PrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: PrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: PrimaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
