import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/api/jsonApi.dart';

import '../../../constants.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: kPrimaryTextColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(50.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
      child: TextField(
        style: TextStyle(
          color: kPrimaryTextColor,
          fontSize: 18.0,
        ),
        keyboardType: TextInputType.text,
        cursorColor: kPrimaryLightColor,
        cursorWidth: 1.0,
        decoration: InputDecoration(
          prefixIcon: Icon(CupertinoIcons.search, color: kPrimaryTextColor),
          hintText: "Qidiruvni kiriting",
          hintStyle: TextStyle(
            color: kPrimaryTextColor,
            fontSize: 18.0,
          ),
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
