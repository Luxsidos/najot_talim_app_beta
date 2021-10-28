import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/screens/details/item_detail.dart';

import '../../../constants.dart';

class ItemList extends StatelessWidget {
  ItemList({Key? key, required this.index}) : super(key: key);

  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          ItemDetail.screenName,
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 24.0,
                        child: Text(
                          "Django ${index + 1} - dars",
                          style: TextStyle(
                            color: kPrimaryTextColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55.0,
                        child: Text(
                          "Django server ishga tushurish va ma'lumotlarni olib kelish Django server ishga tushurish va ma'lumotlarni olib kelish",
                          style: TextStyle(
                            color: kPrimaryTextColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 150.0,
                  height: 100.0,
                  color: kPrimaryLightColor,
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "14 Yanvar",
                    style: TextStyle(
                      color: kPrimarySubtitleColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(width: 25.0),
                Icon(
                  CupertinoIcons.bookmark,
                  color: kPrimarySubtitleColor,
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
                Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: kPrimarySubtitleColor,
                  size: 20.0,
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Divider(height: 1.0, color: kPrimaryTextColor),
          ],
        ),
      ),
    );
  }
}
