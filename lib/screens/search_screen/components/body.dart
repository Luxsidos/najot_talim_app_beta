import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/api/jsonApi.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/screens/search_screen/components/search_item.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';
import 'package:najot_project2/widgets/custom_app_bar.dart';
import 'search_widget.dart';

class Body extends StatelessWidget {
  
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Container(
        color: kPrimaryColor,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      CupertinoIcons.back,
                      color: kPrimaryLightColor,
                    ),
                  ),
                  Text(
                    "IZLASH",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: SearchWidget(),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [];
                },
                body: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(left: 15.0, bottom: 20.0),
                                child: Text(
                                  "TAVSIYA QILINADI",
                                  style: TextStyle(
                                      fontSize: 18.0, color: kPrimaryTextColor),
                                ),
                              );
                            }
                            return Item("Flutter");
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
