import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  Color myColor1 = Color.fromRGBO(15, 24, 38, 1);
  Color myColor2 = Color.fromRGBO(174, 141, 94, 1);
  Color myColor3 = Color.fromRGBO(255, 255, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor1,
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              title: Text(
                "XARID",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              actions: [
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.bookmark,
                      size: MediaQuery.of(context).size.height * 0.03,
                      color: myColor2,
                    ),
                  ),
                ),
              ],
            ),
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.45,
              automaticallyImplyLeading: false,
              centerTitle: false,
              pinned: true,
              stretch: true,
              elevation: 0.0,
              backgroundColor: myColor1,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://yt3.ggpht.com/ytc/AAUvwniqBv6tSS6zfHE2UBC9_7HCfZr-qvMqIR1QtQ-X=s900-c-k-c0x00ffffff-no-rj",
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                titlePadding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                title: Text(
                  "Najot Ta'lim",
                  style: GoogleFonts.bebasNeue().copyWith(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.04,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.02,
                      vertical: MediaQuery.of(context).size.height * 0.03,
                    ),
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          MediaQuery.of(context).size.height * 0.04,
                        ),
                        topRight: Radius.circular(
                          MediaQuery.of(context).size.height * 0.04,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Online kurslar",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.04,
                            fontWeight: FontWeight.w600,
                            color: myColor1,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Expanded(
                          child: Text(
                            "Istalgan turdagi kurslarni xarid qiling va qiymatli ilmga erishing!",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w400,
                              color: myColor1.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.022,
                            horizontal:
                                MediaQuery.of(context).size.height * 0.025,
                          ),
                          height: MediaQuery.of(context).size.height * 0.18,
                          color: Colors.orange.shade50,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: myColor1,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height *
                                          0.04),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      index % 2 == 0
                                          ? "https://yt3.ggpht.com/a/AATXAJxztM8gkmGc6050fe8Xljg4QNQREx3CkLdMON45=s900-c-k-c0xffffffff-no-rj-mo"
                                          : "https://static10.tgstat.ru/channels/_0/de/defd45f83df9a62166df4bdbd0a1ce2b.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(2.0, 2.0),
                                      color: Colors.black26,
                                      blurRadius:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                      spreadRadius:
                                          MediaQuery.of(context).size.height *
                                              0.002,
                                    ),
                                  ],
                                ),
                                width:
                                    MediaQuery.of(context).size.height * 0.13,
                                height: MediaQuery.of(context).size.height,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                              top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              index % 2 == 0
                                                  ? "Flutter kursi (Saud Abdulwahed)"
                                                  : "Golang kursi (Muhammadxon Najimov)",
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.022,
                                                  fontWeight: FontWeight.w600,
                                                  color: myColor1),
                                            ),
                                            SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02),
                                            Text(
                                              index % 2 == 0
                                                  ? "21-dars"
                                                  : "16-dars",
                                              style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.017,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black38,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(0.0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.06,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.06,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(2.0, 10.0),
                                            color: myColor1.withOpacity(0.1),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0,
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        CupertinoIcons.lock_fill,
                                        size:
                                            MediaQuery.of(context).size.height *
                                                0.028,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height * 0.02),
                        child: Divider(
                          height: 0.0,
                          thickness:
                              MediaQuery.of(context).size.height * 0.0012,
                          color: myColor2.withOpacity(0.4),
                        ),
                      ),
                    ],
                  );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
