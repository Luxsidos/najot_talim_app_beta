
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/widgets/custom_app_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String screenName = "home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (context, index) {
          return [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  CustomAppBar(
                    title: "ASOSIY",
                  ),
                ],
              ),
            ),
          ];
        },
        body: Body(),
      ),
    );
  }
}
