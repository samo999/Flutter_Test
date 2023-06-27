// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_test_yes/colors.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key? key,
    required this.ItemlistImages,
    required this.ItemsCountries,
    required this.ItemlistNames,
    required this.ItemlistNumbers,
  }) : super(key: key);

  final List ItemlistImages;
  final List ItemsCountries;
  final List ItemlistNames;
  final List ItemlistNumbers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ItemlistImages.length,
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
                    color: color6,
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
                            image: AssetImage(ItemlistImages[index]),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 150,
                      child: Text(
                        ItemlistNames[index],
                        style: TextStyle(
                            //fontWeight: FontWeight.,
                            fontSize: 16,
                            color: color5,
                            fontFamily: 'SemiBold'),
                      )),
                  SizedBox(
                    width: 6,
                  ),
                  Container(width: 15, child: Image.asset("images/A.png")),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    ItemsCountries[index],
                    style: TextStyle(
                        //fontWeight: FontWeight.,

                        fontSize: 16,
                        color: color5,
                        fontFamily: 'SemiBoldItalic'),
                  ),
                  Spacer(),
                  Container(
                      width: 110,
                      child: Text(
                        ItemlistNumbers[index],
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
                height: 5.0,
                thickness: 0.5,
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
