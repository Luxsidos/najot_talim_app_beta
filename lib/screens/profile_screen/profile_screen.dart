/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';
import 'package:najot_project2/widgets/custom_app_bar.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredSafeArea(
        child: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, index) {
            return [
              SliverAppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(CupertinoIcons.xmark),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0, top: 15.0),
                    child: Text(
                      "KABINET",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ];
          },
          body: Body(),
        ),
      ),
    );
  }
}
*/