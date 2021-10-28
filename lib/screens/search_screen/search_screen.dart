import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/api/jsonApi.dart';

import 'components/body.dart';

class SearchScreen extends StatelessWidget {
  static String screenName = "search";
  SearchScreen( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
