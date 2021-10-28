
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/constants.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key, this.callback}) : super(key: key);

  final callback;

  

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _button(index: 0, icon: CupertinoIcons.home),
          _button(index: 1, icon: CupertinoIcons.search),
          _button(index: 2, icon: Icons.video_library_outlined),
          _button(index: 3, icon: CupertinoIcons.person),
        ],
      ),
    );
  }

  Widget _button({index, icon}) {
    Color _iconColor = Colors.white;
    if (index == _currentScreenIndex) {
      _iconColor = kPrimaryLightColor;
    }

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _currentScreenIndex = index;
            widget.callback(_currentScreenIndex);
          });
        },
        child: Icon(icon, color: _iconColor),
      ),
    );
  }
}
