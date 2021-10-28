/*import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/NajotApp/app/najotApp.dart';
import 'package:flutter_portfolio/models/NajotApp/scheme/listCourseLocal.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_portfolio/models/NajotApp/widgets/najotAppBar.dart';
import 'package:video_player/video_player.dart';

class CourseShowPage extends StatefulWidget {
  const CourseShowPage({Key? key, required this.course}) : super(key: key);

  final Result course;

  @override
  _CourseShowPageState createState() => _CourseShowPageState();
}

class _CourseShowPageState extends State<CourseShowPage> {
  // Find current category :
  Category _category = NajotApp
      .variables.listCourseLocal!.category![NajotApp.variables.currentCategory];

  // For other list data :
  List<Result> _otherListItems = [];
  late int _randCategoryIndex;

  // Show page variables :
  late Result _course; // for current category list data

  late final String _categoryName; // for current category name
  late final String _categoryClassName; // for current category class name
  late final String _teacherName; // for current category teacher name
  late final String _currentItemTitle; // for current item title
  late final String _currentItemContent; // for current item content
  late final String _currentItemVideo; // for current item video link

  // List data variables :
  late final int _length; // for length list data
  late final int _currentItem; // for find current item in list data

  int _count = 0; // for loop index list data

  // Video player controller variables :
  late Future _initializeVideoPlayerFuture; // for future initilize
  late ChewieController _chewieController; // for chewie controller
  late VideoPlayerController
      _videoPlayerController; // for video player controller

  // Video player settings variable
  bool _looping = true; // for video loop play
  bool _autoplay = true; // for video auto play

  @override
  void initState() {
    super.initState();

    // Find current category list data :
    _course = widget.course;

    // Add values to show page variables :
    _categoryName = _category.name!;
    _categoryClassName = _category.categoryClass!;
    _teacherName = _category.teacher!;
    _currentItemTitle = _course.title!;
    _currentItemContent = _course.content!;
    _currentItemVideo = 'assets/videos/example/dracula.mp4';

    // Find length current category list data :
    _length = _category.results!.length;

    // Find current item id :
    _currentItem = int.parse(_course.id!);

    // Loop list data :
    _count = _currentItem + 1;

    // Add video player controller with video link;
    _videoPlayerController = VideoPlayerController.asset(_currentItemVideo);

    // Video player initialize :
    _initializeVideoPlayerFuture = _videoPlayerController.initialize();
  }

  // Play video player function :
  ChewieController _playVideo() {
    // Add chewie controller :
    _chewieController = ChewieController(
      // Settings chewie controller :
      videoPlayerController:
          _videoPlayerController, // Add video player controller to chewie controller
      autoInitialize: false, // auto initialize
      autoPlay: _autoplay, // auto play
      looping: _looping, // looping

      // For video player design :
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.white,
        handleColor: Colors.white,
        backgroundColor: Colors.white,
      ),

      // For error video player :
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );

    return _chewieController;
  }

  void dispose() {
    // Dispose video player :
    _chewieController.pause();
    _chewieController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(174, 141, 94, 1),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(15, 24, 38, 1),
                Color.fromRGBO(15, 24, 38, 1),
                Color.fromRGBO(3, 21, 29, 1)
              ],
            ),
          ),
          child: NestedScrollView(
            physics: BouncingScrollPhysics(),
            headerSliverBuilder: (context, value) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      NajotAppBar(
                        prefix: Icon(CupertinoIcons.chevron_back,
                            color: Colors.white),
                        sufix: Icon(Icons.bookmark_border, color: Colors.white),
                        title: Text(
                          "$_categoryClassName $_categoryName",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                          ),
                        ),
                        subtitle: Text(
                          "$_teacherName",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 210.0,
                          color: Colors.black,
                          child: Container(
                            child: FutureBuilder(
                              future: _initializeVideoPlayerFuture,
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  _playVideo();
                                  return Chewie(
                                    controller: _playVideo(),
                                  );
                                  // ignore: dead_code
                                  _autoplay = false;
                                }
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          _randCategoryIndex = Random()
                              .nextInt(NajotApp.variables.lengthCategory);

                          if (index == 0) {
                            return Container(
                              height: 42.0,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "$_currentItemTitle",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                        ),
                                      ),
                                      Text(
                                        "$_currentItemContent",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }

                          if (index == 1) {
                            if (_count == _category.results!.length) {
                              final _nextCategory = NajotApp
                                  .variables
                                  .listCourseLocal!
                                  .category![_randCategoryIndex];

                              return _content(
                                  item: _nextCategory.results![0],
                                  categoryIndex: _randCategoryIndex);
                            } else {
                              return _content(
                                  item: _category.results![_count],
                                  categoryIndex: _randCategoryIndex);
                            }
                          }

                          if (index % 7 == 0) {
                            return _categoryWidget();
                          }

                          final _nextCategory = NajotApp.variables
                              .listCourseLocal!.category![_randCategoryIndex];
                          final int _randItem =
                              Random().nextInt(_nextCategory.results!.length);

                          return _content(
                              item: _nextCategory.results![_randItem],
                              categoryIndex: _randCategoryIndex);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _content({item, categoryIndex}) {
    return GestureDetector(
      onTap: () {
        NajotApp.variables.currentCategory = categoryIndex;

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CourseShowPage(course: item),
          ),
        );
      },
      child: Container(
        height: 130.0,
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Container(
              width: 160.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(174, 141, 94, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://i.ytimg.com/vi/AVnFbRcMct4/maxresdefault.jpg"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${item.title} ${item.content}",
                      style: TextStyle(
                        color: Color.fromRGBO(174, 141, 94, 1),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      "${_category.teacher}",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryWidget() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 160.0,
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://i.ytimg.com/vi/AVnFbRcMct4/maxresdefault.jpg"),
          ),
        ),
      ),
    );
  }
}*/
