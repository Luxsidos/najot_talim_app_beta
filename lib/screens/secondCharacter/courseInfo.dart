import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CourseInfo extends StatefulWidget {
  Color myColor1;
  Color myColor2;
  Color myColor3;
  //var videoUrl;
  CourseInfo(this.myColor1, this.myColor2, this.myColor3, {Key? key})
      : super(key: key);

  @override
  _CourseInfoState createState() => _CourseInfoState();
}

class _CourseInfoState extends State<CourseInfo> {
  Color myColor1 = Color.fromRGBO(15, 24, 38, 1);
  Color myColor2 = Color.fromRGBO(174, 141, 94, 1);
  Color myColor3 = Color.fromRGBO(255, 255, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.06,
                backgroundColor: Colors.red,
              ),
            ];
          },
          body: Container(
            color: Colors.green,
            child: Column(
              children: [
                Container(
                  color: Colors.deepPurple,
                  height: MediaQuery.of(context).size.height * 0.26,
                  
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.height * 0.01,
                      right: MediaQuery.of(context).size.height * 0.01,
                    ),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          margin: EdgeInsets.all(10.0),
                          color: Colors.yellow,
                        
                        );
                      },
                      itemCount: 10,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
