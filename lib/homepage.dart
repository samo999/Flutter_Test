import 'package:flutter/material.dart';
import 'package:flutter_test_yes/Widgets/GridViewWidget.dart';
import 'package:flutter_test_yes/Widgets/ListViewWidget.dart';
import 'package:flutter_test_yes/app_Localization.dart';
import 'package:flutter_test_yes/colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool list = false;
  bool pressAttention = true;
  List ItemsCountries = ["اللاذقية", "حمص", "Hwash"];
  List ItemlistImages = [
    "images/Macdo.jpg",
    "images/Pepsi.jpg",
    "images/starbucks.jpg"
  ];
  List ItemlistNames = [
    "Macdo",
    "Pepsi",
    "Starbucks",
  ];
  List ItemlistNumbers = [
    "00000000",
    "11111111",
    "222222222",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/BG.png'), fit: BoxFit.fill),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
//Header with Search
            Container(
              height: 110,
              width: 540,
              color: color3,
              child: Padding(
                padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),

                      //searchbar
                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          height: 42,
                          width: 510,
                          decoration: BoxDecoration(
                            color: color5,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 150,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                child: InkWell(
                                  child: Image.asset(
                                    "images/11.png",
                                    height: 30,
                                    width: 50,
                                  ),
                                  onTap: () {},
                                ),
                              ),
                              const Icon(
                                Icons.close,
                                color: Colors.grey,
                              ),
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "images/10.png",
                                    height: 30,
                                    width: 50,
                                  )),
                            ],
                          ),
                        ),
                      ),
//
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                //style:,
                                onPressed: () {},
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .translate("subscribers_msg"),
                                  //'Subscribers',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: color6,
                                      fontFamily: 'SourceSansPro'),
                                )),
                            Container(
                              height: 30,
                              decoration:
                                  const BoxDecoration(gradient: LinearGradient(
                                      //begin: Alignment.topRight,
                                      //end: Alignment.bottomLeft,
                                      colors: [color8, color9])),
                              child: Row(
                                children: [
                                  const VerticalDivider(
                                    thickness: 1,
                                    color: color3,
                                  ),
                                  list == false
                                      ? SizedBox(
                                          height: 30,
                                          width: 50,
                                          child: FlatButton(
                                              onPressed: () {
                                                setState(() {
                                                  list = true;
                                                });
                                              },
                                              child: Image.asset(
                                                "images/3.png",
                                                height: 20,
                                                width: 20,
                                              )),
                                        )
                                      : SizedBox(
                                          height: 30,
                                          width: 50,
                                          child: FlatButton(
                                              onPressed: () {
                                                setState(() {
                                                  list = false;
                                                });
                                              },
                                              child: Image.asset(
                                                "images/2.png",
                                                height: 20,
                                                width: 20,
                                              )),
                                        ),
                                  const VerticalDivider(
                                    thickness: 1,
                                    color: color3,
                                  ),
                                  list == false
                                      ? SizedBox(
                                          height: 30,
                                          width: 50,
                                          child: FlatButton(
                                              onPressed: () {
                                                setState(() {
                                                  list = false;
                                                });
                                              },
                                              child: Image.asset(
                                                "images/20.png",
                                                height: 20,
                                                width: 20,
                                              )))
                                      : SizedBox(
                                          height: 30,
                                          width: 50,
                                          child: FlatButton(
                                              onPressed: () {
                                                setState(() {
                                                  list = true;
                                                });
                                              },
                                              child: Image.asset(
                                                "images/5.png",
                                                height: 20,
                                                width: 20,
                                              ))),
                                  const VerticalDivider(
                                    thickness: 1,
                                    color: color3,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 50,
                                    child: FlatButton(
                                        onPressed: () {},
                                        child: Image.asset(
                                          "images/6.png",
                                          height: 20,
                                          width: 20,
                                        )),
                                  ),
                                  const VerticalDivider(
                                    thickness: 1,
                                    color: color3,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 50,
                                    child: FlatButton(
                                        onPressed: () {},
                                        child: Image.asset(
                                          "images/7.png",
                                          height: 20,
                                          width: 20,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Products',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: color4.withOpacity(0.6),
                                      fontFamily: 'SourceSansPro'),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Related ads',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: color4.withOpacity(0.6),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SourceSansPro'),
                                )),
                          ]),
                    ]),
              ),
            ),
            list
                ? GridViewWidget(
                    ItemlistImages: ItemlistImages,
                    ItemlistNames: ItemlistNames)
                : ListViewWidget(
                    ItemlistImages: ItemlistImages,
                    ItemlistNames: ItemlistNames,
                    ItemsCountries: ItemsCountries,
                    ItemlistNumbers: ItemlistNumbers,
                  )
          ],
        ),
      ),
    )
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        ////////////////////////////
        );
  }
}
