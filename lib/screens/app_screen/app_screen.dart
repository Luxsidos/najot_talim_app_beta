import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/api/jsonApi.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/screens/category_screen/components/category_item.dart';
import 'package:najot_project2/screens/search_screen/search_screen.dart';
import 'package:najot_project2/screens/secondCharacter/numberLoginPage.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';
import 'package:http/http.dart' as http;

class AppScreen extends StatefulWidget {
  AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> with TickerProviderStateMixin {
  bool nightBool = true;
  int _indexLanguage = 0;
  List<String> _languages = ["O'zbek tili", "Русский", "English"];
  Future<NajotApi>? dataFromInternetVariable;

  TabController? tabBarcontroller;
  List<String> coureseList = [
    "Djangoo",
    "Javascript",
    "Flutter",
    "Golang",
    "Foundtion",
    "NodeJS",
    "Frontend"
  ];

  List<String> coursesName = [];

  nightMode(bool trueFalse) {
    setState(() {
      if (trueFalse) {
        kPrimaryColor = Color(0xFF0F1826);
        kPrimaryLightColor = Color(0xFFAE8D5E);
        kPrimaryTextColor = Colors.white;
        kPrimarySubtitleColor = Colors.grey.shade400;
      } else {
        kPrimaryColor = Colors.white;
        kPrimaryLightColor = Color(0xFF0F1826);
        kPrimaryTextColor = Color(0xFF0F1826);
        kPrimarySubtitleColor = Color(0xFF0F1826).withOpacity(0.8);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    tabBarcontroller =
        TabController(length: 5, vsync: this);
    List.generate(7, (index) {
      coursesName.add("Flutter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        endDrawer: SizedBox(
          width: 250,
          child: Theme(
            data: ThemeData(
                primaryColor: kPrimaryColor, canvasColor: kPrimaryColor),
            child: Drawer(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  UserAccountsDrawerHeader(
                    arrowColor: Colors.black,
                    accountName: Text("Muhammadilyas"),
                    accountEmail: Text("Nematjonov"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: kPrimaryLightColor,
                      // backgroundImage: NetworkImage(
                      //   "https://steemitimages.com/DQmSRhgyjnf35Mhm8G11xj2Di6LnmwYbBD5RuvC4G8eo9dH/Hello.jpg",
                      // ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              backgroundColor: kPrimaryColor,
                              title: Text(
                                "Tillar",
                                style: TextStyle(color: kPrimaryTextColor),
                              ),
                              children:
                                  List.generate(_languages.length, (index) {
                                return ListTile(
                                  onTap: () {
                                    setState(() {
                                      _indexLanguage = index;
                                    });
                                    Navigator.pop(context);
                                  },
                                  title: Text(
                                    _languages[index],
                                    style: TextStyle(color: kPrimaryTextColor),
                                  ),
                                  trailing: Icon(
                                    Icons.check,
                                    color: index == _indexLanguage
                                        ? kPrimaryTextColor
                                        : Colors.transparent,
                                  ),
                                );
                              }),
                            );
                          },
                        );
                      },
                      leading: Icon(
                        Icons.translate,
                        color: kPrimaryTextColor,
                      ),
                      title: Text(
                        "Tilni o'zgartirish",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: kPrimaryTextColor,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.forward,
                        color: kPrimaryTextColor,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.moon_fill,
                      color: kPrimaryTextColor,
                    ),
                    title: Text(
                      "Night mode",
                      style: TextStyle(
                        color: kPrimaryTextColor,
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: Switch(
                      value: nightBool,
                      onChanged: (e) {
                        nightBool = e;
                        setState(() {
                          nightMode(nightBool);
                        });
                      },
                      activeColor: kPrimaryLightColor,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NumberLoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Log out",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: kPrimaryLightColor,
                            fixedSize: Size(double.infinity, 50.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: kPrimaryLightColor),
          backgroundColor: kPrimaryColor,
          title: Text(
            "VIDEO KURSLAR",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
              color: kPrimaryTextColor,
            ),
          ),
          bottom: TabBar(
            indicatorColor: kPrimaryLightColor,
            labelColor: kPrimaryTextColor,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            controller: tabBarcontroller,
            tabs: List.generate(5, (index) {
              return Tab(
                text: "Flutter",
              );
            }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryLightColor,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchScreen(),
              ),
            );
          },
          child: Icon(
            CupertinoIcons.search,
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          controller: tabBarcontroller,
          children: List.generate(
            5,
            (index) {
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  if (index % 5 == 0) {
                    return Padding(
                      padding:
                          EdgeInsets.only(left: 15.0, bottom: 15.0, top: 15.0),
                      child: Text(
                        "Saud Abdulwahed".toString().toUpperCase(),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kPrimaryTextColor,
                        ),
                      ),
                    );
                  }
                  return Item("Flutter");
                },
                itemCount: 8,
              );
            },
          ),
        ),
      ),
    );
  }
}
