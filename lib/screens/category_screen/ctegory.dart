import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/screens/home_screen/components/body.dart';

import 'components/body.dart';


class CategoryScreen extends StatelessWidget {
  static String screenName = "category";

  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
