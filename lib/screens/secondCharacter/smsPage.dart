import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/main.dart';
import 'package:najot_project2/screens/secondCharacter/numberLoginPage.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';

class SmsPage extends StatefulWidget {
  String? number;
  SmsPage({this.number, Key? key}) : super(key: key);

  @override
  _SmsPageState createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  List lst1 = List.generate(6, (index) => index);
  List lst2 = List.generate(4, (index) => index);
  List lst3 = List.generate(3, (index) => index);
  int stepIndex = 0;

  var lstSms = [" ", " ", " ", " ", " ", " "];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredSafeArea(
        child: Container(
          color: kPrimaryColor,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NumberLoginPage(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 26.0,
                              color: kPrimaryLightColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Text(
                              "SMS XABAR",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "+998${widget.number} ga yuborilgan kodni tastiqlang",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: lst1.map((e) {
                          return Container(
                            alignment: Alignment.center,
                            height: 46.0,
                            width: 30.0,
                            margin: EdgeInsets.all(3.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white24,
                            ),
                            child: Text(
                              lstSms[e],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 6.0,
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: kPrimaryLightColor,
                              ),
                              child: Text(
                                "Resend code",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              if (lstSms[lstSms.length - 1] != " ") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp(),
                                  ),
                                );
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Keyingisi"),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 18.0,
                                ),
                              ],
                            ),
                            style: TextButton.styleFrom(primary: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28.0),
                        topRight: Radius.circular(28.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: lst2.map((e1) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: lst3.map((e2) {
                            if (lst2[0] == e1) {
                              return Container(
                                height: 90.0,
                                width: 90.0,
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: TextButton(
                                    onPressed: () {
                                      int b = e2 + 1;
                                      setState(() {
                                        lstSms[stepIndex] = b.toString();
                                      });
                                      if (lstSms.length - 1 > stepIndex) {
                                        stepIndex += 1;
                                      }
                                    },
                                    child: Text(
                                      "${e2 + 1}",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      primary: kPrimaryLightColor,
                                    ),
                                  ),
                                ),
                              );
                            } else if (lst2[1] == e1) {
                              return Container(
                                height: 90.0,
                                width: 90.0,
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: TextButton(
                                    onPressed: () {
                                      int b = e2 + 4;
                                      setState(() {
                                        lstSms[stepIndex] = b.toString();
                                      });
                                      if (lstSms.length - 1 > stepIndex) {
                                        stepIndex += 1;
                                      }
                                    },
                                    child: Text(
                                      "${e2 + 4}",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      primary: kPrimaryLightColor,
                                    ),
                                  ),
                                ),
                              );
                            } else if (lst2[2] == e1) {
                              return Container(
                                height: 90.0,
                                width: 90.0,
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: TextButton(
                                    onPressed: () {
                                      int b = e2 + 7;
                                      setState(() {
                                        lstSms[stepIndex] = b.toString();
                                      });
                                      if (lstSms.length - 1 > stepIndex) {
                                        stepIndex += 1;
                                      }
                                    },
                                    child: Text(
                                      "${e2 + 7}",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      primary: kPrimaryLightColor,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              if (e2 == 0) {
                                return Container(
                                  height: 90.0,
                                  width: 90.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(""),
                                  ),
                                );
                              } else if (e2 == 1) {
                                return Container(
                                  height: 90.0,
                                  width: 90.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: TextButton(
                                      onPressed: () {
                                        int b = 0;
                                        setState(() {
                                          lstSms[stepIndex] = b.toString();
                                        });
                                        if (lstSms.length - 1 > stepIndex) {
                                          stepIndex += 1;
                                        }
                                      },
                                      child: Text(
                                        "${e2 = 0}",
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        elevation: 0.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        primary: kPrimaryLightColor,
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Container(
                                  height: 90.0,
                                  width: 90.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          lstSms[stepIndex] = " ";
                                        });
                                        if (stepIndex != 0) {
                                          stepIndex -= 1;
                                        }
                                      },
                                      child: Icon(
                                        CupertinoIcons.delete_left,
                                        color: Colors.black,
                                      ),
                                      style: TextButton.styleFrom(
                                        elevation: 0.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        primary: kPrimaryLightColor,
                                      ),
                                    ),
                                  ),
                                );
                              }
                            }
                          }).toList(),
                        );
                      }).toList(),
                    )),
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
