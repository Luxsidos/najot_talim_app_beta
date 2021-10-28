/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/main.dart';
import 'package:najot_project2/screens/app_screen/app_screen.dart';
import 'package:najot_project2/screens/secondCharacter/numberLoginPage.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';
import 'package:najot_project2/widgets/custom_app_bar.dart';
import 'package:najot_project2/widgets/custom_bottom_bar.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool nightBool = false;
  int _indexLanguage = 0;
  List<String> _languages = ["O'zbek tili", "Русский", "English"];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:
              EdgeInsets.only(left: 15.0, bottom: 10.0, top: 10.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: kPrimaryLightColor,
                    radius: 50.0,
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 110.0,
                      child: Text(
                        "Muhammadilyas Ne'matjonov",
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.pencil,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: ListTile(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text("Tillar"),
                          children: List.generate(_languages.length, (index) {
                            return ListTile(
                              onTap: () {
                                setState(() {
                                  _indexLanguage = index;
                                });
                                Navigator.pop(context);
                              },
                              title: Text(_languages[index]),
                              trailing: Icon(
                                Icons.check,
                                color: index == _indexLanguage
                                    ? Colors.black54
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
                    color: Colors.white,
                  ),
                  title: Text(
                    "Tilni o'zgartirish",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    CupertinoIcons.forward,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.moon_fill,
                  color: Colors.white,
                ),
                title: Text(
                  "Night mode",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                trailing: Switch(
                  value: nightBool,
                  onChanged: (e) {
                    nightBool = e;
                    setState(() {
                      MyApp.nightMode(nightBool);
                    });
                  },
                  activeColor: kPrimaryLightColor,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.white38,
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
                          fontSize: 18.0,
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
    );
  }
}*/
