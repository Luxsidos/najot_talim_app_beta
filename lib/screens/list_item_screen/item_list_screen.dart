import 'package:flutter/material.dart';
import 'package:najot_project2/api/jsonApi.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';
import 'package:najot_project2/widgets/custom_app_bar.dart';

import 'components/item_list.dart';

class CategoryListScreen extends StatelessWidget {
  String? datas;
  CategoryListScreen({this.datas, Key? key}) : super(key: key);

  static String screenName = "category_list";

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: CustomAppBar(
          title: "Flutter",
          subtitle: "Saud Abdulwahed",
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(bottom: 20.0),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ItemList(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
