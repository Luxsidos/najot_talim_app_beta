
import 'package:flutter/material.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.title,
    this.subtitle,
    this.icon,
    this.press,
  })  : preferredSize = Size.fromHeight(kToolbarHeight + 20),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final GestureTapCallback? press;

  

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Container(
        color: kPrimaryColor,
        padding: EdgeInsets.only(left: 15.0, bottom: 10.0, top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title ?? '',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryTextColor,
                  ),
                ),
                widget.subtitle != null
                    ? Text(
                        widget.subtitle ?? '',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: kPrimaryTextColor,
                        ),
                      )
                    : Container(),
              ],
            ),
            Container(
              width: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                onPressed: widget.press,
                child: Icon(widget.icon, color: kPrimaryLightColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
