import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_yes/Product.dart';
import 'package:flutter_test_yes/Widgets/GridViewWidget.dart';
import 'package:flutter_test_yes/Widgets/ListViewWidget.dart';
import 'package:flutter_test_yes/app_Localization.dart';
import 'package:flutter_test_yes/colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required String title}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool islist = false;
  bool pressAttention = true;
  List Products = <Product>[
    Product("Macdo", "9KM", "اللاذقية", "010120", "images/Macdo.jpg", "250000"),
    Product("Pepsi", "010120", "اللاذقية", "250000", "images/Pepsi.jpg", "8KM"),
    Product("Starbucks", "010120", "اللاذقية", "2500000",
        "images/starbucks.jpg", "150KM"),
    Product(
        "Macdo", "010120", "اللاذقية", "2500000", "images/Macdo.jpg", "20KM"),
    Product("Starbucks", "010120", "اللاذقية", "00000000",
        "images/starbucks.jpg", "9KM"),
    Product("Pepsi", "010120", "اللاذقية", "250000", "images/Pepsi.jpg", "2KM"),
    Product(
        "Pepsi", "010120", "اللاذقية", "2500000", "images/Pepsi.jpg", "7KM"),
    Product("Starbucks", "010120", "اللاذقية", "2500000",
        "images/starbucks.jpg", "7KM"),
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
              height: 110.h,
              width: 540.w,
              color: color3,
              child: Padding(
                padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),

                      //searchbar
                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          height: 42.h,
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
                                    height: 30.h,
                                    width: 50.w,
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
                                    height: 30.h,
                                    width: 50.w,
                                  )),
                            ],
                          ),
                        ),
                      ),
///////////////////////

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /*  TextButton(
                                onPressed: () {},
                                child: Text(
                                  // this text will be translated depends on device's language
                                  AppLocalizations.of(context)!
                                      .translate("subscribers_msg"),
                                  //'Subscribers',
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: color6,
                                      fontFamily: 'SourceSansPro'),
                                )),*/
                            Container(
                              height: 40,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [color8, color9])),
                              child: Row(
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        // this text will be translated depends on device's language
                                        AppLocalizations.of(context)!
                                            .translate("subscribers_msg"),
                                        //'Subscribers',
                                        style: const TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: color6,
                                            fontFamily: 'SourceSansPro'),
                                      )),
                                  const VerticalDivider(
                                    thickness: 1,
                                    color: color3,
                                  ),
                                  islist == false
                                      ? SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  islist = true;
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
                                          width: 30,
                                          child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  islist = false;
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
                                  islist == false
                                      ? SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  islist = true;
                                                });
                                              },
                                              child: Image.asset(
                                                "images/20.png",
                                                height: 20,
                                                width: 20,
                                              )))
                                      : SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  islist = false;
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
                                    width: 30,
                                    child: TextButton(
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
                                    width: 30,
                                    child: TextButton(
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
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: color4.withOpacity(0.6),
                                      fontFamily: 'SourceSansPro'),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Related ads',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: color4.withOpacity(0.6),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SourceSansPro'),
                                )),
                          ]),
                    ]),
              ),
            ),
            islist
                ? GridViewWidget(
                    products: Products,
                  )
                : ListViewWidget(
                    products: Products,
                  )
          ],
        ),
      ),
    ));
  }
}
