import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/api/jsonApi.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/screens/list_item_screen/item_list_screen.dart';

class Item extends StatelessWidget {
  String datas;
  Item(this.datas, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoryListScreen(datas: datas)),
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
                  child: SizedBox(
                    height: 52.0,
                    child: Text(
                      "darsliklar to'plami",
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4.0),
                Container(
                  width: 100.0,
                  height: 70.0,
                  color: kPrimaryLightColor,
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "10/8/2021",
                    style: TextStyle(
                      color: kPrimarySubtitleColor,
                      fontSize: 13.0,
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
