import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:najot_project2/constants.dart';
import 'package:najot_project2/main.dart';
import 'package:najot_project2/screens/secondCharacter/smsPage.dart';
import 'package:najot_project2/widgets/colored_safe_area.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

class NumberLoginPage extends StatefulWidget {
  const NumberLoginPage({Key? key}) : super(key: key);

  @override
  _NumberLoginPageState createState() => _NumberLoginPageState();
}

class _NumberLoginPageState extends State<NumberLoginPage> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();

  final String number = "+998712001123";
  final String email = "najottalim.uz";

  int numberTextLength = 9;
  String numberText = "";
  var formKey = GlobalKey<FormFieldState>();
  Color myColor1 = Color.fromRGBO(15, 24, 38, 1);
  Color myColor2 = Color.fromRGBO(174, 141, 94, 1);
  Color myColor3 = Color.fromRGBO(255, 255, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor1,
      body: ColoredSafeArea(
        child: Container(
          color: kPrimaryColor,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 110.0,
                    color: myColor1,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(0.0),
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SmsPage(number: numberText),
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
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            30.0,
                          ),
                          topRight: Radius.circular(
                            30.0,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            key: formKey,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(numberTextLength)
                            ],
                            style: TextStyle(
                              color: myColor1,
                              fontSize: 14.0,
                            ),
                            cursorColor: myColor1,
                            decoration: InputDecoration(
                              prefixText: "+998",
                              prefixStyle: TextStyle(
                                fontSize: 14.0,
                                color: myColor1,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: myColor1,
                                  width: 2.0,
                                ),
                              ),
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onSaved: (e) {
                              numberText = e!;
                            },
                            validator: (value) {
                              if (value!.length != numberTextLength) {
                                return "raqamingizni to'liq kiriting!";
                              } else {
                                return null;
                              }
                            },
                          ),
                          TextButton(
                            onPressed: () => _service.call(number),
                            child: Text(
                              "Bog'lanish uchun: +998712001123",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            style: TextButton.styleFrom(primary: kPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 75.0,
                width: MediaQuery.of(context).size.width / 1.0,
                child: CircleAvatar(
                  radius: 38.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: 35.0,
                      backgroundImage: NetworkImage(
                        "https://avatars.mds.yandex.net/get-zen_doc/1589949/pub_5e240f4cfc69ab00adcdae2d_5e240fa0e4fff000adc2e10a/scale_1200",
                      ),
                      backgroundColor: myColor1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
