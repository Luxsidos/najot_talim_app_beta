
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_project2/screens/secondCharacter/courseInfo.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  Color myColor1 = Color.fromRGBO(15, 24, 38, 1);
  Color myColor2 = Color.fromRGBO(174, 141, 94, 1);
  Color myColor3 = Color.fromRGBO(255, 255, 255, 1);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor3,
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.065,
        backgroundColor: myColor2,
        title: Text("Courses"),
      ),
      body:
          SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Wrap(
            runAlignment: WrapAlignment.spaceBetween,
            children: List.generate(20, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseInfo(
                        myColor1,
                        myColor2,
                        myColor3,
                        //  data.results![index].url,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.015,
                    top: MediaQuery.of(context).size.height * 0.015,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2.0, 2.0),
                        color: Colors.black26,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height * 0.01,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.height * 0.01,
                            ),
                            topRight: Radius.circular(
                                MediaQuery.of(context).size.height * 0.01),
                          ),
                          color: myColor2,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              MediaQuery.of(context).size.height * 0.01,
                            ),
                            bottomRight: Radius.circular(
                              MediaQuery.of(context).size.height * 0.01,
                            ),
                          ),
                          color: myColor1.withOpacity(0.9),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "dars 19", //"${data.results![index].title}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.016,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "dars 19", // "${data.results![index].content}\n${data.results![index].publish}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.014,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
   
  }
}
