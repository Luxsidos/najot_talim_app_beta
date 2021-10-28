import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://yt3.ggpht.com/ytc/AAUvwniqBv6tSS6zfHE2UBC9_7HCfZr-qvMqIR1QtQ-X=s900-c-k-c0x00ffffff-no-rj",
                        ),
                        fit: BoxFit.cover),
                    color: Colors.transparent,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(child: Text("Najot Ta'lim")),
                SizedBox(width: 10.0),
                Icon(
                  CupertinoIcons.bookmark,
                  color: Colors.grey.shade400,
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
                Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: Colors.grey.shade400,
                  size: 20.0,
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Yangi avlod Foundation grantchilari e'lon qilindi!",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Text(
              "22 soat oldin",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 15.0),
            Divider(height: 1.0, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
