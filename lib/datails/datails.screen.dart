import 'package:exercise/components/body.dart';
import 'package:flutter/material.dart';

import '../constans.dart';
import 'body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

    );
        }
}