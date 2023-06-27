// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_test_yes/colors.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    required this.ItemlistImages,
    required this.ItemlistNames,
  }) : super(key: key);

  final List ItemlistImages;
  final List ItemlistNames;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,

        //crossAxisSpacing: 3,
        //mainAxisSpacing: 3
      ),
      //padding: EdgeInsets.all(5),
      shrinkWrap: true,
      itemCount: ItemlistImages.length,
      itemBuilder: (context, index) {
        return Container(
          width: 188,
          height: 233,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          color: Colors.black,
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(ItemlistImages[index]),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: color1,
                        shape: BoxShape.circle,
                        border: Border.all(color: color1)),
                    child: Text(
                      "350",
                      style: TextStyle(
                          fontSize: 16, color: color5, fontFamily: 'Bold'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                width: 30,
                height: 4,
                color: color6,
              ),
              Container(
                width: 180,
                alignment: Alignment.topCenter,
                child: Text(
                  ItemlistNames[index],
                  style: TextStyle(
                      fontSize: 16, color: color5, fontFamily: 'Bold'),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
