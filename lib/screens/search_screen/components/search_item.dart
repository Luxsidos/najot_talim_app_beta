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
            builder: (context) => CategoryListScreen(datas: datas),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Saud Abdulwaheed",
                    style: TextStyle(
                      color: kPrimarySubtitleColor,
                      fontSize: 16.0,
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
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 52.0,
                        child: Text(
                          "Django Foundation darsliklar to'plami",
                          style: TextStyle(
                            color: kPrimaryTextColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 100.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: kPrimaryLightColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Text(
              "14 Yanvar",
              style: TextStyle(
                color: kPrimarySubtitleColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 15.0),
            Divider(height: 1.0, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
