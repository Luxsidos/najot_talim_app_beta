import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/constants.dart';

import 'story.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<List<String>> listContent = [
    [
      "Dasturchi bo'lish uchun nimalarni bilish kerak?",
      "Dasturlash ham bir san'at!"
    ],
    [
      "Dizayner kim va u nimalarga qodir?",
      "Dizayner bu oshpaz, sportchi, mexanik va hatto savdogardir ham!"
    ],
    [
      "SMM menejerlik kimlar uchun va vazifasi nima?",
      "SMM menejeri bu ulkan qoya ..."
    ],
  ];

  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 160.0,
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: listContent.length,
              onPageChanged: (e) {
                setState(() {
                  pageIndex = e;
                });
              },
              itemBuilder: (context, index) {
                final _textTitle = listContent[index][0];
                final _textContent = listContent[index][1];
                return Container(
                  padding:
                      EdgeInsets.only(left: 15.0, right: 60.0, bottom: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _textTitle,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryLightColor,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        _textContent,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              listContent.length,
              (index) => Padding(
                padding: EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: 3.5,
                  backgroundColor:
                      pageIndex == index ? Colors.white : kPrimaryLightColor,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "XABARLAR",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Icon(CupertinoIcons.rectangle_grid_1x2,
                        color: Colors.white, size: 20.0),
                    SizedBox(width: 10.0),
                    Icon(CupertinoIcons.list_dash,
                        color: Colors.white, size: 25.0),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Column(
                children: List.generate(
                  10,
                  (index) => StoryItem(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
