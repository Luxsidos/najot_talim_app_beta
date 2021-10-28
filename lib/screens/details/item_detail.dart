import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/screens/list_item_screen/components/item_list.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';
import 'package:najot_project2/widgets/custom_app_bar.dart';
import 'package:video_player/video_player.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({Key? key}) : super(key: key);

  static String screenName = "detail";

  @override
  _DetailItemState createState() => _DetailItemState();
}

class _DetailItemState extends State<ItemDetail> {
  //https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4

  late final String _itemVideo;

  late Future _initializeVideoPlayerFuture;
  late ChewieController _chewieController;
  late VideoPlayerController _videoPlayerController;

  bool _looping = false;
  bool _autoplay = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemVideo =
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4";

    _videoPlayerController = VideoPlayerController.network(_itemVideo);

    _initializeVideoPlayerFuture = _videoPlayerController.initialize();
  }

  ChewieController _playVideo() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoInitialize: false,
      autoPlay: _autoplay,
      looping: _looping,
      materialProgressColors: ChewieProgressColors(
        backgroundColor: Colors.white54,
        handleColor: kPrimaryLightColor,
        playedColor: kPrimaryLightColor,
        bufferedColor: Colors.white70,
      ),
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

  @override
  void dispose() {
    // TODO: implement dispose
    _chewieController.pause();
    _chewieController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, value) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    CustomAppBar(
                      title: "Django 1 - dars",
                      subtitle: "SAUD ABDULWAHEED",
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Container(
                height: 210.0,
                color: kPrimaryColor,
                child: Container(
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        _playVideo();
                        return Chewie(
                          controller: _playVideo(),
                        );
                        // ignore: dead_code
                        _autoplay = false;
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            color: kPrimaryTextColor,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Foundation Django 1 - dars",
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: kPrimaryTextColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25.0),
                                Icon(
                                  CupertinoIcons.bookmark,
                                  color: kPrimarySubtitleColor,
                                  size: 26.0,
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  CupertinoIcons.ellipsis_vertical,
                                  color: kPrimarySubtitleColor,
                                  size: 26.0,
                                ),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              "Django da serverlarni yayratish va ma'lumotlarni qabul qilish va ular bilan ishlash.",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: kPrimaryTextColor,
                              ),
                            ),
                            SizedBox(height: 20.0),
                          ],
                        ),
                      );
                    }
                    return ItemList(index: index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
