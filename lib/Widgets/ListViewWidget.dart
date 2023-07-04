// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_yes/colors.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key, required this.products}) : super(key: key);

  final List products;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 4,
                    height: 30,
                    decoration: BoxDecoration(
                        color: color6,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(products[index].image),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  SizedBox(
                      width: 150.w,
                      child: Text(
                        products[index].name,
                        style: TextStyle(
                            //fontWeight: FontWeight.,
                            fontSize: 16,
                            color: color5,
                            fontFamily: 'SemiBold'),
                      )),
                  SizedBox(
                    width: 6.w,
                  ),
                  SizedBox(width: 15, child: Image.asset("images/A.png")),
                  SizedBox(
                    width: 6.w,
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        products[index].town,
                        style: TextStyle(
                            //fontWeight: FontWeight.,

                            fontSize: 16,
                            color: color5,
                            fontFamily: 'SemiBoldItalic'),
                      ),
                      Text(
                        products[index].distance,
                        style: TextStyle(
                            //fontWeight: FontWeight.,

                            fontSize: 10,
                            color: color6,
                            fontFamily: 'SemiBoldItalic'),
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                      width: 110,
                      child: Text(
                        products[index].phone,
                        style: TextStyle(
                          //fontWeight: FontWeight.,
                          fontSize: 18,
                          color: color6,
                          fontFamily: 'SemiBoldItalic',
                          //fontStyle: FontStyle.ExtraLightItalic
                        ),
                      ))
                ],
              ),
              Divider(
                height: 5.w,
                thickness: 1.h,
                color: color4,
                //indent: 20.0,
                //endIndent: 20.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
