import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constans.dart';
import '../constans.dart';


class HeaderWithSearchBox extends StatelessWidget {
  final Size size;

  const HeaderWithSearchBox({Key? key, required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: kDefultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefultPadding,
              right: kDefultPadding,
              bottom: 36 + kDefultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(
              children: <Widget>[
                Text(
                  "Hi Faezeh!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefultPadding),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: PrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: PrimaryColor.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            //suffixIcon: SvgPicture.asset("assets\icons\search.svg"),
                          ),
                        )),
                    SvgPicture.asset("assets/icons/search1.svg"),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
